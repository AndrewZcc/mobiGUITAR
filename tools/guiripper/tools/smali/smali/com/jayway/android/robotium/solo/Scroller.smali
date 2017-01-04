.class Lcom/jayway/android/robotium/solo/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/android/robotium/solo/Scroller$Side;
    }
.end annotation


# static fields
.field public static final DOWN:I = 0x0

.field public static final UP:I = 0x1


# instance fields
.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private canScroll:Z

.field private final inst:Landroid/app/Instrumentation;

.field private final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sleeper;)V
    .locals 1
    .parameter "inst"
    .parameter "activityUtils"
    .parameter "viewFetcher"
    .parameter "sleeper"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jayway/android/robotium/solo/Scroller;->canScroll:Z

    .line 46
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    .line 47
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Scroller;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 48
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/Scroller;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    .line 49
    iput-object p4, p0, Lcom/jayway/android/robotium/solo/Scroller;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/jayway/android/robotium/solo/Scroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/jayway/android/robotium/solo/Scroller;->canScroll:Z

    return p1
.end method

.method private scrollScrollView(Landroid/widget/ScrollView;I)Z
    .locals 8
    .parameter "view"
    .parameter "direction"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v4

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 108
    .local v0, height:I
    add-int/lit8 v0, v0, -0x1

    .line 109
    const/4 v3, -0x1

    .line 111
    .local v3, scrollTo:I
    if-nez p2, :cond_3

    .line 112
    move v3, v0

    .line 119
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 120
    .local v1, originalY:I
    move v2, v3

    .line 121
    .local v2, scrollAmount:I
    iget-object v6, p0, Lcom/jayway/android/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    new-instance v7, Lcom/jayway/android/robotium/solo/Scroller$1;

    invoke-direct {v7, p0, p1, v2}, Lcom/jayway/android/robotium/solo/Scroller$1;-><init>(Lcom/jayway/android/robotium/solo/Scroller;Landroid/widget/ScrollView;I)V

    invoke-virtual {v6, v7}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    if-eq v1, v6, :cond_0

    move v4, v5

    .line 131
    goto :goto_0

    .line 115
    .end local v1           #originalY:I
    .end local v2           #scrollAmount:I
    :cond_3
    if-ne p2, v5, :cond_2

    .line 116
    neg-int v3, v0

    goto :goto_1
.end method

.method private scrollScrollViewAllTheWay(Landroid/widget/ScrollView;I)V
    .locals 1
    .parameter "view"
    .parameter "direction"

    .prologue
    .line 142
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollScrollView(Landroid/widget/ScrollView;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return-void
.end method


# virtual methods
.method public drag(FFFFI)V
    .locals 23
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "stepCount"

    .prologue
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 68
    .local v2, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 69
    .local v4, eventTime:J
    move/from16 v21, p3

    .line 70
    .local v21, y:F
    move/from16 v19, p1

    .line 71
    .local v19, x:F
    sub-float v6, p4, p3

    move/from16 v0, p5

    int-to-float v9, v0

    div-float v22, v6, v9

    .line 72
    .local v22, yStep:F
    sub-float v6, p2, p1

    move/from16 v0, p5

    int-to-float v9, v0

    div-float v20, v6, v9

    .line 73
    .local v20, xStep:F
    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v7, p1

    move/from16 v8, p3

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 75
    .local v17, event:Landroid/view/MotionEvent;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    :goto_0
    const/16 v18, 0x0

    .local v18, i:I
    move/from16 v7, v19

    .end local v19           #x:F
    .local v7, x:F
    move/from16 v8, v21

    .end local v21           #y:F
    .local v8, y:F
    :goto_1
    move/from16 v0, v18

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 78
    add-float v8, v8, v22

    .line 79
    add-float v7, v7, v20

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 81
    const/4 v6, 0x2

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 83
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 87
    const/4 v13, 0x1

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    move/from16 v14, p2

    move/from16 v15, p4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    .line 89
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jayway/android/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :goto_3
    return-void

    .line 90
    :catch_0
    move-exception v6

    goto :goto_3

    .line 84
    :catch_1
    move-exception v6

    goto :goto_2

    .line 76
    .end local v7           #x:F
    .end local v8           #y:F
    .end local v18           #i:I
    .restart local v19       #x:F
    .restart local v21       #y:F
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method public scroll(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(IZ)Z

    move-result v0

    return v0
.end method

.method public scroll(IZ)Z
    .locals 7
    .parameter "direction"
    .parameter "allTheWay"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 168
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Scroller;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v4, v6}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 171
    .local v1, viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/widget/ListView;

    aput-object v5, v4, v3

    const-class v5, Landroid/widget/ScrollView;

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-class v6, Landroid/widget/GridView;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v4, v5

    invoke-static {v4, v1}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->filterViewsToSet([Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 173
    .local v2, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Scroller;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v4, v2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 195
    .end local v0           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v3

    .line 180
    .restart local v0       #view:Landroid/view/View;
    :cond_1
    instance-of v4, v0, Landroid/widget/AbsListView;

    if-eqz v4, :cond_2

    .line 181
    check-cast v0, Landroid/widget/AbsListView;

    .end local v0           #view:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result v3

    goto :goto_0

    .line 184
    .restart local v0       #view:Landroid/view/View;
    :cond_2
    instance-of v4, v0, Landroid/widget/ScrollView;

    if-eqz v4, :cond_4

    .line 185
    if-eqz p2, :cond_3

    .line 186
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/jayway/android/robotium/solo/Scroller;->scrollScrollViewAllTheWay(Landroid/widget/ScrollView;I)V

    goto :goto_0

    .line 189
    .restart local v0       #view:Landroid/view/View;
    :cond_3
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/jayway/android/robotium/solo/Scroller;->scrollScrollView(Landroid/widget/ScrollView;I)Z

    move-result v3

    goto :goto_0

    .line 192
    .restart local v0       #view:Landroid/view/View;
    :cond_4
    instance-of v4, v0, Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    .line 193
    check-cast v0, Landroid/webkit/WebView;

    .end local v0           #view:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollWebView(Landroid/webkit/WebView;IZ)Z

    move-result v3

    goto :goto_0
.end method

.method public scrollList(Landroid/widget/AbsListView;IZ)Z
    .locals 6
    .parameter
    .parameter "direction"
    .parameter "allTheWay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/AbsListView;",
            ">(TT;IZ)Z"
        }
    .end annotation

    .prologue
    .local p1, absListView:Landroid/widget/AbsListView;,"TT;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    if-nez p1, :cond_0

    .line 275
    :goto_0
    return v2

    .line 241
    :cond_0
    if-nez p2, :cond_5

    .line 242
    if-eqz p3, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/jayway/android/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/jayway/android/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    if-eq v2, v4, :cond_4

    .line 252
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    .line 274
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Scroller;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    move v2, v3

    .line 275
    goto :goto_0

    .line 255
    :cond_4
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    goto :goto_1

    .line 257
    :cond_5
    if-ne p2, v3, :cond_3

    .line 258
    if-nez p3, :cond_6

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_7

    .line 259
    :cond_6
    invoke-virtual {p0, p1, v2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 263
    :cond_7
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v1, v2, v4

    .line 264
    .local v1, lines:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v0, v2, v1

    .line 266
    .local v0, lineToScrollTo:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 267
    add-int/lit8 v0, v0, -0x1

    .line 269
    :cond_8
    if-gez v0, :cond_9

    .line 270
    const/4 v0, 0x0

    .line 272
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    goto :goto_1
.end method

.method public scrollListToLine(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter
    .parameter "line"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/AbsListView;",
            ">(TT;I)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, view:Landroid/widget/AbsListView;,"TT;"
    if-nez p1, :cond_0

    .line 288
    const-string v1, "AbsListView is null!"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 291
    :cond_0
    instance-of v1, p1, Landroid/widget/GridView;

    if-eqz v1, :cond_1

    .line 292
    add-int/lit8 v0, p2, 0x1

    .line 296
    .local v0, lineToMoveTo:I
    :goto_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    new-instance v2, Lcom/jayway/android/robotium/solo/Scroller$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/jayway/android/robotium/solo/Scroller$4;-><init>(Lcom/jayway/android/robotium/solo/Scroller;Landroid/widget/AbsListView;I)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 301
    return-void

    .line 294
    .end local v0           #lineToMoveTo:I
    :cond_1
    move v0, p2

    .restart local v0       #lineToMoveTo:I
    goto :goto_0
.end method

.method public scrollToSide(Lcom/jayway/android/robotium/solo/Scroller$Side;)V
    .locals 14
    .parameter "side"

    .prologue
    const/16 v5, 0x28

    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Scroller;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 314
    .local v12, screenHeight:I
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Scroller;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 316
    .local v13, screenWidth:I
    int-to-float v0, v13

    const v4, 0x3f0ccccd

    mul-float v2, v0, v4

    .line 317
    .local v2, x:F
    int-to-float v0, v12

    const/high16 v4, 0x4000

    div-float v3, v0, v4

    .line 318
    .local v3, y:F
    sget-object v0, Lcom/jayway/android/robotium/solo/Scroller$Side;->LEFT:Lcom/jayway/android/robotium/solo/Scroller$Side;

    if-ne p1, v0, :cond_1

    move-object v0, p0

    move v4, v3

    .line 319
    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Scroller;->drag(FFFFI)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    sget-object v0, Lcom/jayway/android/robotium/solo/Scroller$Side;->RIGHT:Lcom/jayway/android/robotium/solo/Scroller$Side;

    if-ne p1, v0, :cond_0

    move-object v6, p0

    move v7, v2

    move v8, v1

    move v9, v3

    move v10, v3

    move v11, v5

    .line 321
    invoke-virtual/range {v6 .. v11}, Lcom/jayway/android/robotium/solo/Scroller;->drag(FFFFI)V

    goto :goto_0
.end method

.method public scrollViewToSide(Landroid/view/View;Lcom/jayway/android/robotium/solo/Scroller$Side;)V
    .locals 13
    .parameter "view"
    .parameter "side"

    .prologue
    .line 332
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 333
    .local v10, corners:[I
    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 335
    .local v11, viewHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 336
    .local v12, viewWidth:I
    const/4 v0, 0x0

    aget v0, v10, v0

    int-to-float v0, v0

    int-to-float v1, v12

    const v4, 0x3f0ccccd

    mul-float/2addr v1, v4

    add-float v2, v0, v1

    .line 337
    .local v2, x:F
    const/4 v0, 0x1

    aget v0, v10, v0

    int-to-float v0, v0

    int-to-float v1, v11

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    add-float v3, v0, v1

    .line 338
    .local v3, y:F
    sget-object v0, Lcom/jayway/android/robotium/solo/Scroller$Side;->LEFT:Lcom/jayway/android/robotium/solo/Scroller$Side;

    if-ne p2, v0, :cond_1

    .line 339
    const/4 v0, 0x0

    aget v0, v10, v0

    int-to-float v1, v0

    const/16 v5, 0x28

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Scroller;->drag(FFFFI)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    sget-object v0, Lcom/jayway/android/robotium/solo/Scroller$Side;->RIGHT:Lcom/jayway/android/robotium/solo/Scroller$Side;

    if-ne p2, v0, :cond_0

    .line 341
    const/4 v0, 0x0

    aget v0, v10, v0

    int-to-float v6, v0

    const/16 v9, 0x28

    move-object v4, p0

    move v5, v2

    move v7, v3

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/jayway/android/robotium/solo/Scroller;->drag(FFFFI)V

    goto :goto_0
.end method

.method public scrollWebView(Landroid/webkit/WebView;IZ)Z
    .locals 2
    .parameter "webView"
    .parameter "direction"
    .parameter "allTheWay"

    .prologue
    .line 209
    if-nez p2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    new-instance v1, Lcom/jayway/android/robotium/solo/Scroller$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/jayway/android/robotium/solo/Scroller$2;-><init>(Lcom/jayway/android/robotium/solo/Scroller;Landroid/webkit/WebView;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 216
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Scroller;->inst:Landroid/app/Instrumentation;

    new-instance v1, Lcom/jayway/android/robotium/solo/Scroller$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/jayway/android/robotium/solo/Scroller$3;-><init>(Lcom/jayway/android/robotium/solo/Scroller;Landroid/webkit/WebView;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 223
    :cond_1
    iget-boolean v0, p0, Lcom/jayway/android/robotium/solo/Scroller;->canScroll:Z

    return v0
.end method
