function [stringOut] = severity(amount_acne)
%This function compute the severity  based on the counted
%acne of a half face. This severity  grading criteria was taken from the
%article: Establishment of grading criteria for acne severity; Nobukazu HAYASHI
%   amount_acne: the quantity of acne
%   stringOut:   the severity grade

Severity = {' Mild', ' Moderate', ' Severe', ' Very Severe'};

if(amount_acne<=5)
    i = 1;
else
    if(amount_acne<=20)
        i=2;
    else
        if(amount_acne<=50)
            i=3;
        else
            i=4;
        end
    end
end
   
stringOut = Severity{i};

end

