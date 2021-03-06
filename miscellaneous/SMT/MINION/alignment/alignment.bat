(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/MINION/alignment/get_slot_number.clp"))
(load ?*path*)
(load-facts "minion.dat")
(load-facts "manual_lwg_new.dat")
(load-facts "manual_word.dat")
(load-facts "aper_op_without_@.dat")
(load-facts "hindi_id_order_for_minion.dat")
(run)
(save-facts "word_alignment.dat" local anu_id-anu_mng-sep-man_id-man_mng)
(clear)
;---------------------------------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/MINION/alignment/create_alignment_dic.clp"))
(load ?*path*)
(load-facts "word_alignment_tmp.dat")
(load-facts "word_alignment.dat")
(load-facts "position.dat")
(load-facts "potential_assignment.dat")
(load-facts "manual_id_mapping.dat")
(load-facts "manual_lwg.dat")
(load-facts "database_mng.dat")
(load-facts "para_sent_id_info.dat")
(load-facts "manual_hindi_sen.dat")
(load-facts "manual_lwg_new.dat")
(open "minion_sen_dic.txt" dic_fp "w")
(open "mngs_aligned_with_minion.dat" mng_fp3 "a")
(assert (count 0))
(run)
(close dic_fp)
(close mng_fp3)
(clear)
;---------------------------------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/MINION/alignment/get_mng.clp"))
(load ?*path*)
(load-facts "word_alignment_tmp.dat")
(load-facts "word_alignment.dat")
(load-facts "word.dat")
(load-facts "manual_lwg_new.dat")
(load-facts "hindi_id_order_for_minion.dat")
(load-facts "manual_id_mapping.dat")
(load-facts "restricted_word_mngs.dat")
(load-facts "position.dat")
(load-facts "shallow_parser_root.dat")
(open "minion_sen_dic.txt" dic_fp1 "a")
(assert (left_out_words))
(assert (left_out_slots))
(run)
(close dic_fp1)
(clear)
;-----------------------------------------------------------------------------------------
(load "global_path.clp")
(bind ?*path* (str-cat ?*path* "/miscellaneous/SMT/MINION/alignment/get_phrase.clp"))
(load ?*path*)
(load-facts "GNP_agmt_info.dat")
(load-facts "hin_mng_without_@.dat")
(load-facts "database_mng.dat")
;(load-facts "hindi_id_order.dat")
(load-facts "hindi_id_order_for_minion.dat")
(load-facts "original_word.dat")
(load-facts "shallow_parser_tam.dat")
(load-facts "shallow_parser_GNP_info.dat")
(load-facts "manual_lwg_new.dat")
(load-facts "manual_lwg.dat")
(open "minion_sen_dic.txt" dic_fp2 "a")
(run)
(close dic_fp2)
(clear)
;-----------------------------------------------------------------------------------------
(exit)
