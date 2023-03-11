use int_enum::IntEnum;

#[derive(Debug, PartialEq, Eq, Copy, Clone, IntEnum)]
#[repr(u32)]
pub enum ResistorColor {
    Black = 0,
    Blue = 6,
    Brown = 1,
    Green = 5,
    Grey = 8,
    Orange = 3,
    Red = 2,
    Violet = 7,
    White = 9,
    Yellow = 4,
}

pub fn color_to_value(color: ResistorColor) -> u32 {
    color as u32
}

pub fn value_to_color_string(value: u32) -> String {
    match ResistorColor::from_int(value) {
        Ok(resistor) => format!("{resistor:?}"),
        Err(_) => "value out of range".to_string()
    }
}

pub fn colors() -> Vec<ResistorColor> {
    (0..10)
        .map(|value| ResistorColor::from_int(value).unwrap())
        .collect::<Vec<_>>()
}
