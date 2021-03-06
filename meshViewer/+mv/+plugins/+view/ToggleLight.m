classdef ToggleLight < mv.gui.Plugin
% Toggle display of light source in scene
%
%   Class ToggleLight
%
%   Example
%   ToggleLight
%
%   See also
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2018-07-02,    using Matlab 9.4.0.813654 (R2018a)
% Copyright 2018 INRA - BIA-BIBS.


%% Properties
properties
end % end properties


%% Constructor
methods
    function this = ToggleLight(varargin)
    % Constructor for ToggleLight class
    end
end % end constructors


%% Methods
methods
    function run(this, frame, src, evt) %#ok<INUSL>
        
        % toggle light state
        options = frame.scene.displayOptions;
        options.lightVisible = ~options.lightVisible;

        % update associated graphical element
        updateLightDisplay(frame.sceneRenderer);
    end
    
end % end methods

end % end classdef

