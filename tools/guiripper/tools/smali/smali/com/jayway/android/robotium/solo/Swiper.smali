.class Lcom/jayway/android/robotium/solo/Swiper;
.super Ljava/lang/Object;
.source "Swiper.java"


# static fields
.field public static final EVENT_TIME_INTERVAL_MS:I = 0xa

.field public static final GESTURE_DURATION_MS:I = 0x3e8


# instance fields
.field private final _instrument:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0
    .parameter "inst"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Swiper;->_instrument:Landroid/app/Instrumentation;

    .line 19
    return-void
.end method


# virtual methods
.method public generateSwipeGesture(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 41
    .parameter "startPoint1"
    .parameter "startPoint2"
    .parameter "endPoint1"
    .parameter "endPoint2"

    .prologue
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 26
    .local v2, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 28
    .local v4, eventTime:J
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    .line 29
    .local v29, startX1:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v31, v0

    .line 30
    .local v31, startY1:F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    .line 31
    .local v30, startX2:F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v32, v0

    .line 33
    .local v32, startY2:F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    .line 34
    .local v18, endX1:F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    .line 35
    .local v20, endY1:F
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    .line 36
    .local v19, endX2:F
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    .line 39
    .local v21, endY2:F
    move/from16 v37, v29

    .line 40
    .local v37, x1:F
    move/from16 v39, v31

    .line 43
    .local v39, y1:F
    move/from16 v38, v30

    .line 44
    .local v38, x2:F
    move/from16 v40, v32

    .line 46
    .local v40, y2:F
    const/4 v6, 0x2

    new-array v9, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 47
    .local v9, pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    new-instance v25, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v25 .. v25}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 48
    .local v25, pc1:Landroid/view/MotionEvent$PointerCoords;
    new-instance v26, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v26 .. v26}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 49
    .local v26, pc2:Landroid/view/MotionEvent$PointerCoords;
    move/from16 v0, v37

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 50
    move/from16 v0, v39

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 51
    const/high16 v6, 0x3f80

    move-object/from16 v0, v25

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 52
    const/high16 v6, 0x3f80

    move-object/from16 v0, v25

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 53
    move/from16 v0, v38

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 54
    move/from16 v0, v40

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 55
    const/high16 v6, 0x3f80

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 56
    const/high16 v6, 0x3f80

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 57
    const/4 v6, 0x0

    aput-object v25, v9, v6

    .line 58
    const/4 v6, 0x1

    aput-object v26, v9, v6

    .line 60
    const/4 v6, 0x2

    new-array v8, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 61
    .local v8, pointerProperties:[Landroid/view/MotionEvent$PointerProperties;
    new-instance v27, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v27 .. v27}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 62
    .local v27, pp1:Landroid/view/MotionEvent$PointerProperties;
    new-instance v28, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v28 .. v28}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 63
    .local v28, pp2:Landroid/view/MotionEvent$PointerProperties;
    const/4 v6, 0x0

    move-object/from16 v0, v27

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 64
    const/4 v6, 0x1

    move-object/from16 v0, v27

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 65
    const/4 v6, 0x1

    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 66
    const/4 v6, 0x1

    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 67
    const/4 v6, 0x0

    aput-object v27, v8, v6

    .line 68
    const/4 v6, 0x1

    aput-object v28, v8, v6

    .line 72
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 78
    .local v22, event:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Swiper;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 80
    move-object/from16 v0, v28

    iget v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x5

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 84
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Swiper;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 86
    const/16 v24, 0x64

    .line 88
    .local v24, numMoves:I
    sub-float v6, v29, v18

    move/from16 v0, v24

    int-to-float v7, v0

    div-float v33, v6, v7

    .line 89
    .local v33, stepX1:F
    sub-float v6, v31, v20

    move/from16 v0, v24

    int-to-float v7, v0

    div-float v35, v6, v7

    .line 90
    .local v35, stepY1:F
    sub-float v6, v30, v19

    move/from16 v0, v24

    int-to-float v7, v0

    div-float v34, v6, v7

    .line 91
    .local v34, stepX2:F
    sub-float v6, v32, v21

    move/from16 v0, v24

    int-to-float v7, v0

    div-float v36, v6, v7

    .line 94
    .local v36, stepY2:F
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 96
    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    .line 97
    const/4 v6, 0x0

    aget-object v6, v9, v6

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v7, v7, v33

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 98
    const/4 v6, 0x0

    aget-object v6, v9, v6

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v7, v7, v35

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 99
    const/4 v6, 0x1

    aget-object v6, v9, v6

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v7, v7, v34

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 100
    const/4 v6, 0x1

    aget-object v6, v9, v6

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v7, v7, v36

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 102
    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 105
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Swiper;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 94
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method
