fplot(@(t) heaviside(t+1)-heaviside(t-1) + heaviside(t+2) -heaviside(t-2),'lineWidth',3);