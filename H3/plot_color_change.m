function [  ] = plot_color_change( f )
%plot_color_change function creates an UI which allows color changing
%of a plot curve f.
c = uicontextmenu;

f.UIContextMenu = c;

uimenu(c,'Label','Red','Callback',@changecolor);
uimenu(c,'Label','Green','Callback',@changecolor);
uimenu(c,'Label','Black','Callback',@changecolor);

    function changecolor(source,callbackdata)
        switch source.Label
            case 'Black'
                f.Color = [0 0 0];
            case 'Red'
                f.Color = [1 0 0];
            case 'Green'
                f.Color = [0 1 0];
        end
    end

end

