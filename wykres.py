import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk, Gdk, GObject

class CoordinateSystem(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Układ Współrzędnych")
        self.set_default_size(1000, 400)

        self.drawing_area = Gtk.DrawingArea()
        self.drawing_area.connect("draw", self.on_draw)

        self.input_entry = Gtk.Entry()
        self.input_entry.set_placeholder_text("Wprowadź ciąg cyfr (max 10)")

        self.draw_button = Gtk.Button(label="Narysuj")
        self.draw_button.connect("clicked", self.on_draw_button_clicked)

        grid = Gtk.Grid()
        grid.attach(self.input_entry, 0, 0, 1, 1)
        grid.attach(self.draw_button, 1, 0, 1, 1)

        vbox = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=6)
        vbox.pack_start(self.drawing_area, True, True, 0)
        vbox.pack_start(grid, False, False, 0)

        self.add(vbox)

        self.data = []

    def on_draw(self, widget, cr):
        width = widget.get_allocated_width()
        height = widget.get_allocated_height()

        # Ustawienie tła na białe
        cr.set_source_rgb(1, 1, 1)
        cr.rectangle(0, 0, width, height)
        cr.fill()

        # Ustawienie koloru linii na czarny
        cr.set_source_rgb(0, 0, 0)
        cr.set_line_width(1)

        # Narysowanie osi x i y
        cr.move_to(50, 50)
        cr.line_to(50, height - 50)
        cr.stroke()

        cr.move_to(50, height - 50)
        cr.line_to(width - 50, height - 50)
        cr.stroke()

        # Narysowanie podziałki na osi x
        for i in range(10):
            x = 50 + i * (width - 100) / 9
            cr.move_to(x, height - 50)
            cr.line_to(x, height - 45)
            cr.stroke()

        # Narysowanie podziałki na osi y
        for i in range(10):
            y = height - 50 - i * (height - 100) / 9
            cr.move_to(50, y)
            cr.line_to(45, y)
            cr.stroke()

        # Rysowanie wykresu na podstawie danych
        if self.data:
            cr.set_source_rgb(1, 0, 0)  # Kolor czerwony
            cumulative_sum = 0
            for i in range(len(self.data)):
                cumulative_sum += self.data[i]
                x = 50 + i * (width - 100) / 9
                y = height - 50 - cumulative_sum * (height - 100) / 90  # Dzielimy przez 90, aby zapewnić skalę na osi Y
                cr.arc(x, y, 3, 0, 2 * 3.14)  # Narysowanie punktu jako okrąg
                cr.fill()

                # Wyświetlenie numeracji punktu
                cr.move_to(x + 5, height - 25)
                cr.show_text(f"sumFx({'+'.join(map(str, self.data[:i+1]))})")

    def on_draw_button_clicked(self, button):
        input_text = self.input_entry.get_text()
        self.data = []
        for char in input_text:
            if char.isdigit():
                self.data.append(int(char))
        self.drawing_area.queue_draw()

win = CoordinateSystem()
win.connect("destroy", Gtk.main_quit)
win.show_all()
Gtk.main()
