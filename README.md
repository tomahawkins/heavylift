# HeavyLift

A large drone project for material transport.
Specifically, transporting snowboarders to the tops of mountains so they can ride down them.
(Note they are towed up, not flown.)

The idea is based on a [Monocopter](https://en.wikipedia.org/wiki/Monocopter) design for lift efficiency and easy transport.

- Clips onto a snowboard rack.
- Inspired by the [Charles McCutchen flying machine](http://www.airplanesandrockets.com/airplanes/charybdis-oct-1972-aam.htm) (the Charybdis).
    - [video](https://www.youtube.com/watch?v=IrK8k_OjIeA)
    - [video](https://www.youtube.com/watch?v=1oSck_XD0_M)
-  Monocopter videos:
    - [video](https://www.youtube.com/watch?v=u23Hqq8QbeE)
    - [video](https://www.youtube.com/watch?v=B4JKhi3khps)
    - [video](https://www.youtube.com/watch?v=Toa75LYNVxY)
    - [video](https://www.youtube.com/watch?v=I_6EjX8T9Ag)
- Yes, single blade helicopters [fly](https://www.youtube.com/watch?v=MH9N9comEy4) just [fine](https://www.youtube.com/watch?v=AD9juUWL5iU).

## Configuration

- Powerhead (gas or electric) as counter weight.
    - If gas, fuel tank at center of rotation to keep balance and fuel burns off.
- At center cargo hook on swivel drops rope to poma seat or t-bar.

## Thrust

Original idea had propeller located in wingtip 
[vortex](https://www.youtube.com/watch?v=lslarZiRJhg) for efficiency.
That or located on wingtip leading edge to minimize vortex losses, similar to [V-173](https://en.wikipedia.org/wiki/Vought_V-173).
In either of these configurations, the motor drives the prop via shaft or belt along inside of the wing.

However, a downside with this approach is that the wing cyclic pitching will have to
fight against the initial of the propeller and the engine.
For simplicity (and efficiency) it is probably better to have the propeller
mounted directly on the engine on the opposite side of the wing (no shaft, belt, or 90 degree gearbox).

Furthermore, to allow the wing to pitch freely, the wing should attach to the power-side with
a helicopter-like blade grip and feathering shaft.



## Control

On ride up, directional sensor on board/skis controls direction of tow
with limits on tow force and speed.
On ride down, drone tracks rider's position plus 150' altitude to clear trees and obstacles.

- [Research project](http://www.jamesphoughton.com/2012/07/26/monocopter-control.html).

A problem with monocopter control has been servo bandwidth.  High speed helicopter tail rotor servos are often used.
It may be possible to use a control period of 3X the rotor period:

    0/4 1/4 2/4 3/4 0/4 1/4 2/4 3/4 0/4 1/4 2/4 3/4 0/4 1/4 2/4 3/4 0/4 1/4 2/4 3/4   # Rotor phase
     h   -   l   -   h   -   l   -   h   -   l   -   h   -   l   -   h   -   l   -    # Control period 1X of rotor period.
     h           -           l           -           h           -           l        # Control period 3X of rotor period (might work with some control degradation).


## [Cargo Hook](https://en.wikipedia.org/wiki/Cargo_hook_%28helicopter%29) and Tow System

Noah and I tested the undriven swivel idea using a weighted rope attached to a swivel attached to a drill.
The rope spun just a little and produced only minor vibrations.
I was concerned the rope would start whipping around,
but at least in this test the weighted end remains very stable
(rope length ~10 feet, weight ~0.25 lbs).
We also tested the rope w/o the swivel.  This produced harmonics, but never
caused the rope end to go nuts.

We also got and tested a 
[Rock Exotica Shackle Swivel](http://www.rockexotica.com/product/swivels/shackle-swivel/).
The swivel had a little more friction in the bearings, but the drill test passed.
The 3/4" shackle can bolt directly into the airframe, with the bolt aligned
lateral to the wing to allow it to pivot during rotor coning.

## Landing Gear

Possibly have wheeled gear, fixed to airframe that rotates with craft.
Wheels, or skis, aligned with center of rotation.
A benefit could be that since the gear is fixed in position,
it may limit ground resonance: rotor coning would not create gear oscillations.

A problem with this approach is that the gear would have to roll (ski)
over the tow/lift line.


## Monocopter Resources

- [Jack Crossfile](http://diydrones.com/profile/JackCrossfire), monocopter expert.
- [Monocopter blog](http://diydrones.com/profiles/blogs/diy-monocopters).

