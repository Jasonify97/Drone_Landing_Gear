# <img src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/20f9c3fa-63b6-4318-b1e8-ee5730d2869c"  width="30" height="30"/> Drone_Landing_Gear
</br></br>

# <img src="https://github.com/Jasonify97/AICI/assets/98500133/604d456c-cd5d-46df-850b-884e713fe51c"  width="30" height="30"/>프로젝트 소개
👉[발표 PPT](https://github.com/Jasonify97/Drone_Landing_Gear/files/12486951/15.2.pptx)👉[졸업논문_Drone_Landing_Gear](https://github.com/Jasonify97/Drone_Landing_Gear/files/12487019/_DroneLandingGear_.pdf)👉[유튜브 영상]https://www.youtube.com/watch?v=rZGu-Yvpw08&t=248s
</br>

|<img width="250" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/4ed5a32b-4cf1-47de-b7b6-8e312ef67d08">|<img width="250" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/89e174f3-e0ce-4815-a41a-597610233c35">|
|:---:|:---:|
|산악 구조용 드론|드론 랜딩기어|

군사용 목적으로 시작되었던 드론은 현재 촬영, 구조, 산업, 재난관리 등 특수한 목적을 가지는 드론의 활용목적와 활용범위가 나날이 증가하고 있습니다.</br>
좌측사진은 드론텍이서 제작한 산악구조용 드론이며, 실종자 수색 및 응급물품전달의 역할을 하고 있습니다. </br>
하지만, 위 드론의 경우 랜딩기어가 고정되어있어 평지에서만 착륙이 가능하며, 울퉁불퉁하고나 경사가 있는 지형의 경우 착륙시 드론이 전도될 가능성이 있습니다. </br></br>
이에 평지 뿐만 아니라 험지에서도 착륙할 수 있도록 드론 랜딩기어를 제작하는 프로젝트입니다. 
</br>
</br>

## 🐱선행 연구 사례
|<img width="250" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/af109e8c-1010-4303-bf1a-5a3bc1d938b9">|<img width="250" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/116892a0-6f0c-4cc3-93b6-86d82894cb12">|
|:---:|:---:|
|착륙 매커니즘|평지에 착륙 후 택배 배송|

* 위 사진은 아마존에서특허 낸 택배용 드론으로써, 4개의 다리를 가지며, 다리가 지형에 따라 길이 조정이 되어 다양한 지형에서 착륙할 수 있다.
* 발끝에 압력센서가 부착되어 있으며, 유압 방식을 사용해 다리의 길이를 조정한다.
</br>
</br>

## ⛳과제설계 목표
* 2-Link구조의 다리를 이용해 평평한 지형뿐만 아니라 험지에서도 착륙할 수 있다.
* 거리측정센서를 이용하여 이륙 시 다리는 접어지며, 착륙 시 다리는 펴진다.
* 드론에 부착 가능한 랜딩기어를 제작한다.
* 랜딩기어 하단부에 있는 카메라로 영상처리를 통한 그리드 표시를 하며, FPV방식으로 사용자가 육안으로 착륙지점을 스캔한다.
* 랜딩기어 테스트베드를 제작하여, 드론과 장착하기 전 기능을 점검한다.
* 드론과 장착되어야 하기 때문에 떨어지지 않도록 고정되어야 하며, 무게 또한 가벼워야 한다.
</br>
</br>

## 💁‍♂️팀원소개
이준용 - 시뮬레이션, 테스트베드 제작, 영상편집</br>
김홍연 - C/Arduino, 부품 테스트</br>
문다훈 - PCB기판 설계, 팀장</br>
신영석 - 3D모델링, 3D프린팅</br>
최승호 - 카메라 영상 송/수신, 회로설계</br>
</br>
</br>

# 🔎프로젝트 상세내용

### 지형조사
|![대운동장 경사로2](https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/1f1314ce-043a-474c-baf4-97b46420efb5)|![대운동장 계단2](https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/94dee827-22b5-49ea-bf60-26d7a1c15e1e)|![제2운동장 경사로](https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/1a10ff9f-dbcb-4298-847c-23a701988f23)|![skriker drone](https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/c90c5e71-5aec-459a-9b5a-219f772a7281)|
|:---:|:---:|:---:|:---:|
|대운동장 경사로|대운동장 계단|제2운동장 경사로|스트라이커 드론|

* 작품의 주제를 정했으니 이제 작품의 사이즈 및 스펙을 정해야 했는데, 착륙지형에 대한 수치적인 목표가 없었으며, 무게, 사이즈 또한 정하기 어려웠다.
* 이에 원광대학교 캠퍼스 내 다양한 지형을 조사 하였으며, 이를 토대로 착륙에 대한 최종 목표가 정해졌다.(경사로의 경우 30도, 계단의 경우15.5cm)
* 마지막 사진은 축구 드론에 쓰이는 스트라이커 드론이며, 학교에 있었기 때문에 스트라이커드론의 추력, 접합방식등을 정하기에 용이하였다.
</br>
</br>

### 시뮬레이션

|![30der](https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/ede8cc0a-f4e3-47fa-8fa6-018f84ca9592)|![burby](https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/8db25bf7-5103-4317-a943-d99e85a87f60)|
|:---:|:---:|
|30도 경사|울퉁불퉁한 지형|
|![stair](https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/a7973822-8fd8-43a6-b880-2f1ac8a04bf0)|![hor](https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/ec1e5410-8808-40e3-bb64-441e28c28e37)|
|계단|흔들리는 지형|

* 조사한 지형들의 수치를 바탕으로 Matlab을 이용해 경사로, 울퉁불퉁한 지형, 계단, 흔들리는 지형에서 시뮬래이션을 진행하여 개념과, 아이디어를 시각화 하였다.
* 또한 시뮬레이션을 통해 정확한 예측을 하여, 향후 장비 요구를 파악함으로써 비용을 절감하였다.

</br></br>
### 작품 스펙
|<img width="332" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/819b8479-8670-41ca-bd60-14ba1fcd069b">|
|:---:|

* 30도 경사에서 착륙할 수 있도록 L1의 길이는 13.5cm, 15.5cm인 계단에서 착륙할 수 있도록 L2의 길이를 16cm로 설정하였다.
* 랜딩기어 본체의 부피는 23cm x 23cm x 12.1cm이며 물품을 넣을 수 있는 공간의 높이는 7.2cm이다.
* 또한 목표 무게는 1.1kg를 기준하여 설정하였다. 




</br>
</br>

### 3D모델링/프린팅/부품 테스트

|<img width="373" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/869225f3-f6b1-47e7-a68b-09e4cba5ef71">|<img width="353" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/7443eed9-cc34-4d74-9902-241020287cd4">|
|:---:|:---:|
|랜딩기어 모델링|기체 하단부|

* 4개의 다리는 2-Link 구조로 정밀한 모션컨트롤을 위해 서보모터와 다리 부품들과의 공차를 적게 모델링 하였다.
* 물품 운송을 위한 공간을 배치하여 모델링 하였다.
* 목표로 정한 지형에서 착륙할 수 있도록 전체적인 사이즈를 모델링 하였다.
* 랜딩기어 하단에 카메라가 위치하게끔 설계하였다.

</br>

|<img width="346" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/624d84f5-7dd7-4463-b443-e0921499f568">|<img width="336" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/7d203a82-8399-47de-aed8-0a4d0bbbbfea">|<img width="371" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/d5a67871-4104-4d75-9f99-c9bf375b29c6">|
|:---:|:---:|:---:|
|랜딩기어 다리|랜딩기어 몸통|영상 송/수신|
* 3D프린터를 이용해 랜딩기어의 다리를 만들었으며, 레이저 커팅기를 이용하여 랜딩기어의 몸통을 제작하였다.
* 3D프린터로 부품을 출력한 후 결합하는 과정에서 서보모터가 헛도는 문제가 발행하여, 공차를 수정해가며 출력/결합을 반복하였다.
* 레이저 커팅기를 이용하여 MDF 3T를 재단 후 결합하였으며, 케이블타이와 접착제를 이용하여 단단히 고정하였다.
* 드론용 영상 송신기와 스마트폰 수신기를 이용하여 FPV 영상 송/수신이 가능하도록 하였다.
</br>
</br>

### 테스트베드 제작
|<img width="376" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/bea4106c-715b-41f1-a51b-b921114bf10e">|<img width="342" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/2fe14725-e45c-4d3d-9016-66c88b02d6d7">|
|:---:|:---:|
|테스트베드 모델링|모터 브라켓 출력|
|<img width="365" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/90a9b8a5-4442-44be-a74a-937ea3bcec8b">|<img width="339" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/853f747e-8749-4052-b0da-b1b205f84cc0">|
|테스트 베드|테스트베드 조작부|

* 제작한 랜딩기어를 테스트하기 위해 테스트베드를 제작하였다.
* 경사면은 스텝모터와 와이어를 이용하여 각도 조절을 하며, 랜딩기어는 엔코더와 전산볼트를 이용하여 높낮이 조절을 한다.
* 스텝모터와 엔코더 제어를 쉽게 할수 있도록 버튼을 사용하였다.

### 랜딩기어 완성 사진
|<img width="364" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/4f36a4c4-a0b5-4315-ace9-0dc0d376b0d6">|<img width="358" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/b98a3e2d-a608-4316-ae77-5841cc022e7b">|
|:---:|:---:|

### 예산 집행 현황
<p align="center"><img width="800" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/e0d9c115-77ab-49be-9adf-6b54abca48f3"></p>

### 결과 분석
<p align="center"><img width="800" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/fbda5466-e0ad-4686-92a3-c14d856c4fa3"></p>

















## 기대효과
</br>

|<img width="361" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/6e9e7843-54c1-4477-a9a7-4259548c2bf2">|<img width="361" alt="image" src="https://github.com/Jasonify97/Drone_Landing_Gear/assets/98500133/00c20778-b2e9-4f6c-995f-7aa5be429b1f">|
|:---:|:---:|
|산악지형|택배 드론|

* 좌측사진은 산악지역의 조난자를 위한 수색 및 응급 장비전달을 목적으로 하는 드론텍이라는 기업에서 제작한 특수목적 드론인 헬프드론이다. </br>
공중에서 줄을 이용해 물품을 전달하는데 위 드론에 랜딩기어, 카메라, 스피커 및 마이크를 장착하여 착륙 후 물품 전달과 동시에 구조담당자가 구조대상자의 상태 확인 및 정확한 응급처치를 돕는 방향으로 활용할 수 있다.
* 우측 사진은 택배용 드론으로 택배 수령지를 따로 정할 필요 없이 원하는 지역으로 배송할 수 있어 신속한 물품 배송이 가능하며, 안정적인 착륙을 통하여 물품의 손상을 방지할 수 있다.






















