.class Lcom/jayway/android/robotium/solo/Tapper;
.super Ljava/lang/Object;
.source "Tapper.java"


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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    .line 20
    return-void
.end method


# virtual methods
.method public varargs generateTapGesture(I[Landroid/graphics/PointF;)V
    .locals 28
    .parameter "numTaps"
    .parameter "points"

    .prologue
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 27
    .local v2, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 30
    .local v4, eventTime:J
    const/4 v6, 0x0

    aget-object v6, p2, v6

    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    .line 31
    .local v24, x1:F
    const/4 v6, 0x0

    aget-object v6, p2, v6

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v26, v0

    .line 33
    .local v26, y1:F
    const/16 v25, 0x0

    .line 34
    .local v25, x2:F
    const/16 v27, 0x0

    .line 35
    .local v27, y2:F
    move-object/from16 v0, p2

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 38
    const/4 v6, 0x1

    aget-object v6, p2, v6

    iget v0, v6, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    .line 39
    const/4 v6, 0x1

    aget-object v6, p2, v6

    iget v0, v6, Landroid/graphics/PointF;->y:F

    move/from16 v27, v0

    .line 42
    :cond_0
    move-object/from16 v0, p2

    array-length v6, v0

    new-array v9, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 43
    .local v9, pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    new-instance v20, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 44
    .local v20, pc1:Landroid/view/MotionEvent$PointerCoords;
    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 45
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 46
    const/high16 v6, 0x3f80

    move-object/from16 v0, v20

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 47
    const/high16 v6, 0x3f80

    move-object/from16 v0, v20

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 48
    const/4 v6, 0x0

    aput-object v20, v9, v6

    .line 49
    new-instance v21, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v21 .. v21}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 50
    .local v21, pc2:Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p2

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 52
    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 53
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 54
    const/high16 v6, 0x3f80

    move-object/from16 v0, v21

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 55
    const/high16 v6, 0x3f80

    move-object/from16 v0, v21

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 56
    const/4 v6, 0x1

    aput-object v21, v9, v6

    .line 59
    :cond_1
    move-object/from16 v0, p2

    array-length v6, v0

    new-array v8, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 60
    .local v8, pointerProperties:[Landroid/view/MotionEvent$PointerProperties;
    new-instance v22, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v22 .. v22}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 61
    .local v22, pp1:Landroid/view/MotionEvent$PointerProperties;
    const/4 v6, 0x0

    move-object/from16 v0, v22

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 62
    const/4 v6, 0x1

    move-object/from16 v0, v22

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 63
    const/4 v6, 0x0

    aput-object v22, v8, v6

    .line 64
    new-instance v23, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v23 .. v23}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 65
    .local v23, pp2:Landroid/view/MotionEvent$PointerProperties;
    move-object/from16 v0, p2

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 67
    const/4 v6, 0x1

    move-object/from16 v0, v23

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 68
    const/4 v6, 0x1

    move-object/from16 v0, v23

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 69
    const/4 v6, 0x1

    aput-object v23, v8, v6

    .line 72
    :cond_2
    const/16 v19, 0x0

    .line 73
    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 75
    const/4 v6, 0x0

    move-object/from16 v0, p2

    array-length v7, v0

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

    .line 79
    .local v18, event:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 81
    move-object/from16 v0, p2

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 83
    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p2

    array-length v7, v0

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

    .line 91
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 93
    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    .line 94
    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x6

    move-object/from16 v0, p2

    array-length v7, v0

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

    .line 102
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 105
    :cond_3
    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    .line 106
    const/4 v6, 0x1

    move-object/from16 v0, p2

    array-length v7, v0

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

    .line 110
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 112
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 114
    .end local v18           #event:Landroid/view/MotionEvent;
    :cond_4
    return-void
.end method
