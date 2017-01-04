.class Lcom/jayway/android/robotium/solo/Rotator;
.super Ljava/lang/Object;
.source "Rotator.java"


# static fields
.field private static final EVENT_TIME_INTERVAL_MS:I = 0xa

.field public static final LARGE:I = 0x0

.field public static final SMALL:I = 0x1


# instance fields
.field private final _instrument:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0
    .parameter "inst"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    .line 21
    return-void
.end method


# virtual methods
.method public generateRotateGesture(ILandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 35
    .parameter "size"
    .parameter "center1"
    .parameter "center2"

    .prologue
    .line 25
    const-wide/16 v21, 0x0

    .line 26
    .local v21, incrementFactor:D
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    .line 27
    .local v27, startX1:F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    .line 28
    .local v29, startY1:F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v28, v0

    .line 29
    .local v28, startX2:F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v30, v0

    .line 31
    .local v30, startY2:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 32
    .local v2, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 35
    .local v4, eventTime:J
    move/from16 v31, v27

    .line 36
    .local v31, x1:F
    move/from16 v33, v29

    .line 39
    .local v33, y1:F
    move/from16 v32, v28

    .line 40
    .local v32, x2:F
    move/from16 v34, v30

    .line 42
    .local v34, y2:F
    const/4 v6, 0x2

    new-array v9, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 43
    .local v9, pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    new-instance v23, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v23 .. v23}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 44
    .local v23, pc1:Landroid/view/MotionEvent$PointerCoords;
    new-instance v24, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v24 .. v24}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 45
    .local v24, pc2:Landroid/view/MotionEvent$PointerCoords;
    move/from16 v0, v31

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 46
    move/from16 v0, v33

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 47
    const/high16 v6, 0x3f80

    move-object/from16 v0, v23

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 48
    const/high16 v6, 0x3f80

    move-object/from16 v0, v23

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 49
    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 50
    move/from16 v0, v34

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 51
    const/high16 v6, 0x3f80

    move-object/from16 v0, v24

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 52
    const/high16 v6, 0x3f80

    move-object/from16 v0, v24

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 53
    const/4 v6, 0x0

    aput-object v23, v9, v6

    .line 54
    const/4 v6, 0x1

    aput-object v24, v9, v6

    .line 56
    const/4 v6, 0x2

    new-array v8, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 57
    .local v8, pointerProperties:[Landroid/view/MotionEvent$PointerProperties;
    new-instance v25, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v25 .. v25}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 58
    .local v25, pp1:Landroid/view/MotionEvent$PointerProperties;
    new-instance v26, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v26 .. v26}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 59
    .local v26, pp2:Landroid/view/MotionEvent$PointerProperties;
    const/4 v6, 0x0

    move-object/from16 v0, v25

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 60
    const/4 v6, 0x1

    move-object/from16 v0, v25

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 61
    const/4 v6, 0x1

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 62
    const/4 v6, 0x1

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 63
    const/4 v6, 0x0

    aput-object v25, v8, v6

    .line 64
    const/4 v6, 0x1

    aput-object v26, v8, v6

    .line 68
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 75
    .local v18, event:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 77
    move-object/from16 v0, v26

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

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 82
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 84
    packed-switch p1, :pswitch_data_0

    .line 97
    :goto_0
    const-wide/16 v19, 0x0

    .local v19, i:D
    :goto_1
    const-wide v6, 0x400921fb54442d18L

    cmpg-double v6, v19, v6

    if-gez v6, :cond_0

    .line 99
    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    .line 100
    const/4 v6, 0x0

    aget-object v6, v9, v6

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-double v10, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v7, v10

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 101
    const/4 v6, 0x0

    aget-object v6, v9, v6

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-double v10, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v7, v10

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 102
    const/4 v6, 0x1

    aget-object v6, v9, v6

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-double v10, v7

    const-wide v12, 0x400921fb54442d18L

    add-double v12, v12, v19

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v7, v10

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 103
    const/4 v6, 0x1

    aget-object v6, v9, v6

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-double v10, v7

    const-wide v12, 0x400921fb54442d18L

    add-double v12, v12, v19

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v7, v10

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 105
    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 109
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 97
    add-double v19, v19, v21

    goto :goto_1

    .line 88
    .end local v19           #i:D
    :pswitch_0
    const-wide v21, 0x3f847ae147ae147bL

    .line 90
    goto :goto_0

    .line 93
    :pswitch_1
    const-wide v21, 0x3fb999999999999aL

    goto :goto_0

    .line 113
    .restart local v19       #i:D
    :cond_0
    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    .line 114
    move-object/from16 v0, v26

    iget v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x6

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 119
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 121
    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    .line 122
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 125
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 126
    return-void

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
