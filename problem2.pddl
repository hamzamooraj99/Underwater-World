(define
    (problem problem2)
    (:domain underwater_world)
    (:objects 
        ;SUBMARINES
        sub1 sub2 sub3 - submarine
        
        ;PERSONNEL
        pilot1 pilot2 pilot3 - pilot
        sci1 sci2 - scientist
        eng1 eng2 eng3 eng4 - engineer
        
        ;LOCATIONS (GRID POSITIONS)
        l11 l13 l31 l21 l32 l22 l33 l23 - water 
        l12 - land
        
        ;BASE
        cc - command_centre
        rb1 rb2 - research_base
        
        ;KITS
        sk1 sk2 sk3 sk4 sk5 - struct_kit
        ck1 ck2 - cable_kit
        
        ;GENERATOR
        gen1 - generator
    )
    (:init
    ;================================ GRID =================================
        (deep l31)      (deep l21)      (shallow l11)
        (shallow l32)   (shallow l22)   (land l12)
        (deep l33)      (shallow l23)   (shallow l13)
        
        
        (adj_loc l11 l12)(adj_loc l11 l21)
        (adj_loc l12 l11)(adj_loc l12 l22)(adj_loc l12 l13)
        (adj_loc l13 l12)(adj_loc l13 l23)
        
                         (adj_loc l21 l11)(adj_loc l21 l31)(adj_loc l21 l22)
        (adj_loc l22 l21)(adj_loc l22 l12)(adj_loc l22 l32)(adj_loc l22 l23)
        (adj_loc l23 l22)(adj_loc l23 l13)(adj_loc l23 l33)
                                                                                    ;GRID IS LIKE BELOW:
                         (adj_loc l31 l21)(adj_loc l31 l32)                         ;   l31 l21 l11 
        (adj_loc l32 l31)(adj_loc l32 l22)(adj_loc l32 l33)                         ;   l32 l22 l12
        (adj_loc l33 l32)(adj_loc l33 l23)                                          ;   l33 l23 l13
        
        (marine_protected l23)
        (kraken_housing l31)
    ;=======================================================================
        (sub_location sub1 l11)(sub_cargo_space sub1)
        (sub_location sub2 l11)(sub_cargo_space sub2)
        (sub_location sub3 l11)(sub_cargo_space sub3)
        (diff_subs sub1 sub2)(diff_subs sub1 sub3)
        (diff_subs sub2 sub1)(diff_subs sub2 sub3)
        (diff_subs sub3 sub1)(diff_subs sub3 sub2)
        
        (base_loc cc l11)
        (pilot_loc pilot1 cc)(pilot_loc pilot2 cc)(pilot_loc pilot3 cc)
        (crew_loc sci1 cc)(crew_loc sci2 cc)
        (crew_loc eng1 cc)(crew_loc eng2 cc)(crew_loc eng3 cc)(crew_loc eng4 cc)
        
        
        (kit_loc_base sk1)(kit_loc_base sk2)(kit_loc_base sk3)(kit_loc_base sk4)(kit_loc_base sk5)
        (diff_kits sk1 sk2)(diff_kits sk1 sk3)(diff_kits sk1 sk4)(diff_kits sk1 sk5)
        (diff_kits sk2 sk1)(diff_kits sk2 sk3)(diff_kits sk2 sk4)(diff_kits sk2 sk5)
        (diff_kits sk3 sk1)(diff_kits sk3 sk2)(diff_kits sk3 sk4)(diff_kits sk3 sk5)
        (diff_kits sk4 sk1)(diff_kits sk4 sk2)(diff_kits sk4 sk3)(diff_kits sk4 sk5)
        (diff_kits sk5 sk1)(diff_kits sk5 sk2)(diff_kits sk5 sk3)(diff_kits sk5 sk4)
        
        (kit_loc_base ck1)(kit_loc_base ck2)
        (diff_kits ck1 ck2)
        
        (diff_bases rb1 rb2)
    )
    (:goal(and
            (generator gen1 l22)(cable_at_loc l32)(cable_at_loc l33)
            (base_loc rb1 l33)
            (loc_researched l23)(research_analysed l23)
        )
    )
)