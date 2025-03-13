uniform vec3 uDepthcolor;
uniform vec3 uSurfacecolor;
uniform float uColorOffset;
uniform float uColorMultiplier;


varying float vElevation;


void main()

{
    float mixStrength = vElevation * uColorMultiplier + uColorOffset;
    vec3 color = mix(uSurfacecolor, uDepthcolor, mixStrength);
    gl_FragColor = vec4(color, 1.0);
}