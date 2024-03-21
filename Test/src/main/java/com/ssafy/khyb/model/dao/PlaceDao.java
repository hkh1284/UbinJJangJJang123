package com.ssafy.khyb.model.dao;

import com.ssafy.khyb.model.dto.PlaceDto;

import java.util.List;

public interface PlaceDao {
    PlaceDto getPlaceById(int placeId);
    List<PlaceDto> getPlacesOf(int planId);
    // 만약 plan에 placeId를 가지는 장소가 연결되어 있다면 삭제하고.
    // 연결되어 있지 않으면 새로 추가해준다.
    // 삭제된 경우 false 반환, 추가된 경우 true 반환
    boolean togglePlace(int planId, PlaceDto dto);
}
