package com.ssafy.khyb.model.dao;

import com.ssafy.khyb.model.dto.PlaceDto;
import com.ssafy.khyb.model.dto.PlanDto;

import java.util.List;

public interface PlanDao {
    PlanDto getPlanById(int planId);
    List<PlanDto> getPlansOf(int userId); // id가 userId인 사용자의 모든 plan을 반환
    PlanDto createPlan(int ownerUserId, PlaceDto dto); // 소유자를 ownerUserId로 설정하여 플랜 생성
    boolean deletePlanById(int planId);
    PlanDto updatePlan(PlanDto dto);
}
