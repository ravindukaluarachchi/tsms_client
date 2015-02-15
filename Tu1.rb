require './tu_dw1.rb'

class Tu1 < Qt::DockWidget

    def initialize(parent = nil)
	super(parent)

	@ui = Ui::DockWidget.new

	@ui.setup_ui(self)
    end

end
