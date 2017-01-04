.class public Lcom/jayway/android/robotium/solo/Solo;
.super Ljava/lang/Object;
.source "Solo.java"


# static fields
.field public static final CLOSED:I = 0x0

.field public static final DELETE:I = 0x43

.field public static final DOWN:I = 0x14

.field public static final ENTER:I = 0x42

.field public static final LANDSCAPE:I = 0x0

.field public static final LEFT:I = 0x15

.field public static final MENU:I = 0x52

.field public static final OPENED:I = 0x1

.field public static final PORTRAIT:I = 0x1

.field public static final RIGHT:I = 0x16

.field public static final UP:I = 0x13


# instance fields
.field protected final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field protected final asserter:Lcom/jayway/android/robotium/solo/Asserter;

.field protected final checker:Lcom/jayway/android/robotium/solo/Checker;

.field protected final clicker:Lcom/jayway/android/robotium/solo/Clicker;

.field protected final dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

.field protected final getter:Lcom/jayway/android/robotium/solo/Getter;

.field protected final instrumentation:Landroid/app/Instrumentation;

.field protected final presser:Lcom/jayway/android/robotium/solo/Presser;

.field protected final rotator:Lcom/jayway/android/robotium/solo/Rotator;

.field protected final screenshotTaker:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

.field protected final scroller:Lcom/jayway/android/robotium/solo/Scroller;

.field protected final searcher:Lcom/jayway/android/robotium/solo/Searcher;

.field protected final sender:Lcom/jayway/android/robotium/solo/Sender;

.field protected final setter:Lcom/jayway/android/robotium/solo/Setter;

.field protected final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field protected final swiper:Lcom/jayway/android/robotium/solo/Swiper;

.field protected final tapper:Lcom/jayway/android/robotium/solo/Tapper;

.field protected final textEnterer:Lcom/jayway/android/robotium/solo/TextEnterer;

.field protected final viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

.field protected final waiter:Lcom/jayway/android/robotium/solo/Waiter;

.field protected webUrl:Ljava/lang/String;

.field protected final webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

.field protected final zoomer:Lcom/jayway/android/robotium/solo/Zoomer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2527
    const-string v0, "solo_large_timeout"

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lcom/jayway/android/robotium/solo/Solo;->initializeTimeout(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/jayway/android/robotium/solo/Timeout;->setLargeTimeout(I)V

    .line 2528
    const-string v0, "solo_small_timeout"

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/jayway/android/robotium/solo/Solo;->initializeTimeout(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/jayway/android/robotium/solo/Timeout;->setSmallTimeout(I)V

    .line 2529
    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 1
    .parameter "instrumentation"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jayway/android/robotium/solo/Solo;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;Landroid/app/Activity;)V
    .locals 9
    .parameter "instrumentation"
    .parameter "activity"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->webUrl:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    .line 98
    new-instance v0, Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-direct {v0}, Lcom/jayway/android/robotium/solo/Sleeper;-><init>()V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 99
    new-instance v0, Lcom/jayway/android/robotium/solo/Sender;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-direct {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Sender;-><init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/Sleeper;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->sender:Lcom/jayway/android/robotium/solo/Sender;

    .line 100
    new-instance v0, Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-direct {v0, p1, p2, v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;Lcom/jayway/android/robotium/solo/Sleeper;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 101
    new-instance v0, Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-direct {v0, v1}, Lcom/jayway/android/robotium/solo/ViewFetcher;-><init>(Lcom/jayway/android/robotium/solo/ActivityUtils;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    .line 102
    new-instance v0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-direct {v0, v1, v2, v3}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;-><init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sleeper;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->screenshotTaker:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    .line 103
    new-instance v0, Lcom/jayway/android/robotium/solo/DialogUtils;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-direct {v0, v1, v2, v3}, Lcom/jayway/android/robotium/solo/DialogUtils;-><init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sleeper;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    .line 104
    new-instance v0, Lcom/jayway/android/robotium/solo/WebUtils;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/jayway/android/robotium/solo/WebUtils;-><init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sleeper;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    .line 105
    new-instance v0, Lcom/jayway/android/robotium/solo/Scroller;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/jayway/android/robotium/solo/Scroller;-><init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sleeper;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    .line 106
    new-instance v0, Lcom/jayway/android/robotium/solo/Searcher;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jayway/android/robotium/solo/Searcher;-><init>(Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/WebUtils;Lcom/jayway/android/robotium/solo/Scroller;Lcom/jayway/android/robotium/solo/Sleeper;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    .line 107
    new-instance v0, Lcom/jayway/android/robotium/solo/Waiter;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-direct/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Waiter;-><init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Searcher;Lcom/jayway/android/robotium/solo/Scroller;Lcom/jayway/android/robotium/solo/Sleeper;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    .line 108
    new-instance v0, Lcom/jayway/android/robotium/solo/Setter;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-direct {v0, v1}, Lcom/jayway/android/robotium/solo/Setter;-><init>(Lcom/jayway/android/robotium/solo/ActivityUtils;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->setter:Lcom/jayway/android/robotium/solo/Setter;

    .line 109
    new-instance v0, Lcom/jayway/android/robotium/solo/Getter;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-direct {v0, p1, v1, v2}, Lcom/jayway/android/robotium/solo/Getter;-><init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/Waiter;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    .line 110
    new-instance v0, Lcom/jayway/android/robotium/solo/Asserter;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-direct {v0, v1, v2}, Lcom/jayway/android/robotium/solo/Asserter;-><init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/Waiter;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->asserter:Lcom/jayway/android/robotium/solo/Asserter;

    .line 111
    new-instance v0, Lcom/jayway/android/robotium/solo/Checker;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-direct {v0, v1, v2}, Lcom/jayway/android/robotium/solo/Checker;-><init>(Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Waiter;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    .line 112
    new-instance v0, Lcom/jayway/android/robotium/solo/Clicker;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->sender:Lcom/jayway/android/robotium/solo/Sender;

    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    iget-object v6, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    iget-object v7, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    iget-object v8, p0, Lcom/jayway/android/robotium/solo/Solo;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/jayway/android/robotium/solo/Clicker;-><init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sender;Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/Sleeper;Lcom/jayway/android/robotium/solo/Waiter;Lcom/jayway/android/robotium/solo/WebUtils;Lcom/jayway/android/robotium/solo/DialogUtils;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    .line 113
    new-instance v0, Lcom/jayway/android/robotium/solo/Zoomer;

    invoke-direct {v0, p1}, Lcom/jayway/android/robotium/solo/Zoomer;-><init>(Landroid/app/Instrumentation;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->zoomer:Lcom/jayway/android/robotium/solo/Zoomer;

    .line 114
    new-instance v0, Lcom/jayway/android/robotium/solo/Swiper;

    invoke-direct {v0, p1}, Lcom/jayway/android/robotium/solo/Swiper;-><init>(Landroid/app/Instrumentation;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->swiper:Lcom/jayway/android/robotium/solo/Swiper;

    .line 115
    new-instance v0, Lcom/jayway/android/robotium/solo/Tapper;

    invoke-direct {v0, p1}, Lcom/jayway/android/robotium/solo/Tapper;-><init>(Landroid/app/Instrumentation;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->tapper:Lcom/jayway/android/robotium/solo/Tapper;

    .line 116
    new-instance v0, Lcom/jayway/android/robotium/solo/Rotator;

    invoke-direct {v0, p1}, Lcom/jayway/android/robotium/solo/Rotator;-><init>(Landroid/app/Instrumentation;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->rotator:Lcom/jayway/android/robotium/solo/Rotator;

    .line 117
    new-instance v0, Lcom/jayway/android/robotium/solo/Presser;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    iget-object v5, p0, Lcom/jayway/android/robotium/solo/Solo;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Presser;-><init>(Lcom/jayway/android/robotium/solo/Clicker;Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/Sleeper;Lcom/jayway/android/robotium/solo/Waiter;Lcom/jayway/android/robotium/solo/DialogUtils;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->presser:Lcom/jayway/android/robotium/solo/Presser;

    .line 118
    new-instance v0, Lcom/jayway/android/robotium/solo/TextEnterer;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-direct {v0, p1, v1, v2}, Lcom/jayway/android/robotium/solo/TextEnterer;-><init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/Clicker;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->textEnterer:Lcom/jayway/android/robotium/solo/TextEnterer;

    .line 119
    return-void
.end method

.method private static initializeTimeout(Ljava/lang/String;I)I
    .locals 8
    .parameter "property"
    .parameter "defaultValue"

    .prologue
    .line 2551
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2552
    .local v0, clazz:Ljava/lang/Class;
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2553
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2554
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 2556
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #value:Ljava/lang/String;
    .end local p1
    :goto_0
    return p1

    .line 2555
    .restart local p1
    :catch_0
    move-exception v1

    .line 2556
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "message"
    .parameter "activityClass"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->asserter:Lcom/jayway/android/robotium/solo/Asserter;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;)V

    .line 653
    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1
    .parameter "message"
    .parameter "activityClass"
    .parameter "isNewInstance"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->asserter:Lcom/jayway/android/robotium/solo/Asserter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jayway/android/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 684
    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "name"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->asserter:Lcom/jayway/android/robotium/solo/Asserter;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "name"
    .parameter "isNewInstance"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->asserter:Lcom/jayway/android/robotium/solo/Asserter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jayway/android/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 668
    return-void
.end method

.method public assertMemoryNotLow()V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->asserter:Lcom/jayway/android/robotium/solo/Asserter;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Asserter;->assertMemoryNotLow()V

    .line 694
    return-void
.end method

.method public clearEditText(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1728
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->textEnterer:Lcom/jayway/android/robotium/solo/TextEnterer;

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v2, Landroid/widget/EditText;

    invoke-virtual {v0, p1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/jayway/android/robotium/solo/TextEnterer;->setEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1729
    return-void
.end method

.method public clearEditText(Landroid/widget/EditText;)V
    .locals 2
    .parameter "editText"

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 1740
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->textEnterer:Lcom/jayway/android/robotium/solo/TextEnterer;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/TextEnterer;->setEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1741
    return-void
.end method

.method public clearLog()V
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Waiter;->clearLog()V

    .line 2380
    return-void
.end method

.method public clearTextInWebElement(Lcom/jayway/android/robotium/solo/By;)V
    .locals 2
    .parameter "by"

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/WebUtils;->enterTextIntoWebElement(Lcom/jayway/android/robotium/solo/By;Ljava/lang/String;)V

    .line 1752
    return-void
.end method

.method public clickInList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickInList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public clickInList(II)Ljava/util/ArrayList;
    .locals 2
    .parameter "line"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1162
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/jayway/android/robotium/solo/Clicker;->clickInList(IIZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public clickLongInList(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "line"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1175
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v1, v2}, Lcom/jayway/android/robotium/solo/Clicker;->clickInList(IIZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public clickLongInList(II)Ljava/util/ArrayList;
    .locals 3
    .parameter "line"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/jayway/android/robotium/solo/Clicker;->clickInList(IIZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public clickLongInList(III)Ljava/util/ArrayList;
    .locals 2
    .parameter "line"
    .parameter "index"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/jayway/android/robotium/solo/Clicker;->clickInList(IIZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public clickLongOnScreen(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/jayway/android/robotium/solo/Clicker;->clickLongOnScreen(FFI)V

    .line 771
    return-void
.end method

.method public clickLongOnScreen(FFI)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jayway/android/robotium/solo/Clicker;->clickLongOnScreen(FFI)V

    .line 784
    return-void
.end method

.method public clickLongOnText(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 1038
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 1039
    return-void
.end method

.method public clickLongOnText(Ljava/lang/String;I)V
    .locals 6
    .parameter "text"
    .parameter "match"

    .prologue
    const/4 v2, 0x1

    .line 1051
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 1052
    return-void
.end method

.method public clickLongOnText(Ljava/lang/String;II)V
    .locals 6
    .parameter "text"
    .parameter "match"
    .parameter "time"

    .prologue
    const/4 v2, 0x1

    .line 1078
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    move-object v1, p1

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 1079
    return-void
.end method

.method public clickLongOnText(Ljava/lang/String;IZ)V
    .locals 6
    .parameter "text"
    .parameter "match"
    .parameter "scroll"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 1066
    return-void
.end method

.method public clickLongOnTextAndPress(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "index"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Clicker;->clickLongOnTextAndPress(Ljava/lang/String;I)V

    .line 1092
    return-void
.end method

.method public clickLongOnView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 974
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    .line 976
    return-void
.end method

.method public clickLongOnView(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "time"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    .line 989
    return-void
.end method

.method public clickOnActionBarHomeButton()V
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnActionBarHomeButton()V

    .line 1222
    return-void
.end method

.method public clickOnActionBarItem(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnActionBarItem(I)V

    .line 1215
    return-void
.end method

.method public clickOnButton(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    .line 1103
    return-void
.end method

.method public clickOnButton(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public clickOnCheckBox(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const-class v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    .line 1125
    return-void
.end method

.method public clickOnEditText(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    .line 1136
    return-void
.end method

.method public clickOnImage(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    .line 1763
    return-void
.end method

.method public clickOnImageButton(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const-class v1, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    .line 808
    return-void
.end method

.method public clickOnMenuItem(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnMenuItem(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public clickOnMenuItem(Ljava/lang/String;Z)V
    .locals 1
    .parameter "text"
    .parameter "subMenu"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnMenuItem(Ljava/lang/String;Z)V

    .line 844
    return-void
.end method

.method public clickOnRadioButton(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const-class v1, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;I)V

    .line 1114
    return-void
.end method

.method public clickOnScreen(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 741
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(FF)V

    .line 742
    return-void
.end method

.method public clickOnScreen(FFI)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "numberOfClicks"

    .prologue
    .line 754
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 755
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clickOnScreen(float x, float y, int numberOfClicks) requires API level >= 14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->tapper:Lcom/jayway/android/robotium/solo/Tapper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    invoke-virtual {v0, p3, v1}, Lcom/jayway/android/robotium/solo/Tapper;->generateTapGesture(I[Landroid/graphics/PointF;)V

    .line 759
    return-void
.end method

.method public clickOnText(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1000
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    move-object v1, p1

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 1001
    return-void
.end method

.method public clickOnText(Ljava/lang/String;I)V
    .locals 6
    .parameter "text"
    .parameter "match"

    .prologue
    const/4 v2, 0x0

    .line 1012
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v4, 0x1

    move-object v1, p1

    move v3, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 1013
    return-void
.end method

.method public clickOnText(Ljava/lang/String;IZ)V
    .locals 6
    .parameter "text"
    .parameter "match"
    .parameter "scroll"

    .prologue
    const/4 v2, 0x0

    .line 1025
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnText(Ljava/lang/String;ZIZI)V

    .line 1026
    return-void
.end method

.method public clickOnToggleButton(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const-class v1, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOn(Ljava/lang/Class;Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public clickOnView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 946
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 947
    return-void
.end method

.method public clickOnView(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "immediately"

    .prologue
    .line 957
    if-eqz p2, :cond_0

    .line 958
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 963
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 961
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    goto :goto_0
.end method

.method public clickOnWebElement(Lcom/jayway/android/robotium/solo/By;)V
    .locals 3
    .parameter "by"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnWebElement(Lcom/jayway/android/robotium/solo/By;IZ)V

    .line 869
    return-void
.end method

.method public clickOnWebElement(Lcom/jayway/android/robotium/solo/By;I)V
    .locals 2
    .parameter "by"
    .parameter "match"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnWebElement(Lcom/jayway/android/robotium/solo/By;IZ)V

    .line 881
    return-void
.end method

.method public clickOnWebElement(Lcom/jayway/android/robotium/solo/By;IZ)V
    .locals 1
    .parameter "by"
    .parameter "match"
    .parameter "scroll"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnWebElement(Lcom/jayway/android/robotium/solo/By;IZ)V

    .line 894
    return-void
.end method

.method public clickOnWebElement(Lcom/jayway/android/robotium/solo/WebElement;)V
    .locals 3
    .parameter "webElement"

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 855
    const-string v0, "WebElement is null and can therefore not be clicked!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/WebElement;->getLocationX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/WebElement;->getLocationY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(FF)V

    .line 858
    return-void
.end method

.method public drag(FFFFI)V
    .locals 6
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "stepCount"

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Scroller;->drag(FFFFI)V

    .line 1239
    return-void
.end method

.method public enterText(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "text"

    .prologue
    .line 1620
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->textEnterer:Lcom/jayway/android/robotium/solo/TextEnterer;

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v2, Landroid/widget/EditText;

    invoke-virtual {v0, p1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v1, v0, p2}, Lcom/jayway/android/robotium/solo/TextEnterer;->setEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1621
    return-void
.end method

.method public enterText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2
    .parameter "editText"
    .parameter "text"

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 1633
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->textEnterer:Lcom/jayway/android/robotium/solo/TextEnterer;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/TextEnterer;->setEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method public enterTextInWebElement(Lcom/jayway/android/robotium/solo/By;Ljava/lang/String;)V
    .locals 4
    .parameter "by"
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 1645
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1, v3}, Lcom/jayway/android/robotium/solo/Waiter;->waitForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Lcom/jayway/android/robotium/solo/WebElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebElement with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jayway/android/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/WebUtils;->enterTextIntoWebElement(Lcom/jayway/android/robotium/solo/By;Ljava/lang/String;)V

    .line 1649
    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->finalize()V

    .line 2417
    return-void
.end method

.method public finishOpenedActivities()V
    .locals 1

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->finishOpenedActivities()V

    .line 2425
    return-void
.end method

.method public getActivityMonitor()Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getActivityMonitor()Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "index"

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3
    .parameter "text"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getButton(Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 2
    .parameter "text"
    .parameter "onlyVisible"

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViews()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2046
    .local p1, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViews(Ljava/lang/Class;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2059
    .local p1, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/WebUtils;->getCurrentWebElements()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebElements(Lcom/jayway/android/robotium/solo/By;)Ljava/util/ArrayList;
    .locals 1
    .parameter "by"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jayway/android/robotium/solo/By;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/WebUtils;->getCurrentWebElements(Lcom/jayway/android/robotium/solo/By;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 2
    .parameter "index"

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditText(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 3
    .parameter "text"

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditText(Ljava/lang/String;Z)Landroid/widget/EditText;
    .locals 2
    .parameter "text"
    .parameter "onlyVisible"

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getImage(I)Landroid/widget/ImageView;
    .locals 2
    .parameter "index"

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageButton(I)Landroid/widget/ImageButton;
    .locals 2
    .parameter "index"

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Landroid/widget/TextView;
    .locals 2
    .parameter "index"

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3
    .parameter "text"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 2
    .parameter "text"
    .parameter "onlyVisible"

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getTopParent(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "view"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v1, p1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getTopParent(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, topParent:Landroid/view/View;
    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 1909
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/Solo;->getView(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(II)Landroid/view/View;
    .locals 5
    .parameter "id"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1921
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    invoke-virtual {v2, p1, p2}, Lcom/jayway/android/robotium/solo/Getter;->getView(II)Landroid/view/View;

    move-result-object v1

    .line 1923
    .local v1, viewToReturn:Landroid/view/View;
    if-nez v1, :cond_0

    .line 1924
    add-int/lit8 v0, p2, 0x1

    .line 1925
    .local v0, match:I
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Views with id: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' are not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 1932
    .end local v0           #match:I
    :cond_0
    :goto_0
    return-object v1

    .line 1929
    .restart local v0       #match:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View with id: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getView(Ljava/lang/Class;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 1978
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p2, p1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Ljava/lang/String;I)Landroid/view/View;
    .locals 5
    .parameter "id"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1955
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->getter:Lcom/jayway/android/robotium/solo/Getter;

    invoke-virtual {v2, p1, p2}, Lcom/jayway/android/robotium/solo/Getter;->getView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    .line 1957
    .local v1, viewToReturn:Landroid/view/View;
    if-nez v1, :cond_0

    .line 1958
    add-int/lit8 v0, p2, 0x1

    .line 1959
    .local v0, match:I
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Views with id: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' are not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 1966
    .end local v0           #match:I
    :cond_0
    :goto_0
    return-object v1

    .line 1963
    .restart local v0       #match:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View with id: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getViews(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWebElement(Lcom/jayway/android/robotium/solo/By;I)Lcom/jayway/android/robotium/solo/WebElement;
    .locals 6
    .parameter "by"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1990
    add-int/lit8 v0, p2, 0x1

    .line 1991
    .local v0, match:I
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v3

    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/jayway/android/robotium/solo/Waiter;->waitForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Lcom/jayway/android/robotium/solo/WebElement;

    move-result-object v1

    .line 1993
    .local v1, webElement:Lcom/jayway/android/robotium/solo/WebElement;
    if-nez v1, :cond_0

    .line 1994
    if-le v0, v4, :cond_1

    .line 1995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WebElements with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jayway/android/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' are not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 2001
    :cond_0
    :goto_0
    return-object v1

    .line 1998
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebElement with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Solo;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jayway/android/robotium/solo/WebUtils;->splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2012
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v2, Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 2014
    .local v0, webView:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 2015
    const-string v1, "WebView is not found!"

    invoke-static {v1, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 2017
    :cond_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    new-instance v2, Lcom/jayway/android/robotium/solo/Solo$1;

    invoke-direct {v2, p0, v0}, Lcom/jayway/android/robotium/solo/Solo$1;-><init>(Lcom/jayway/android/robotium/solo/Solo;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 2022
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->webUrl:Ljava/lang/String;

    return-object v1
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->sender:Lcom/jayway/android/robotium/solo/Sender;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sender;->goBack()V

    .line 729
    return-void
.end method

.method public goBackToActivity(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->goBackToActivity(Ljava/lang/String;)V

    .line 2239
    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 2215
    return-void
.end method

.method public isCheckBoxChecked(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    const-class v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;I)Z

    move-result v0

    return v0
.end method

.method public isCheckBoxChecked(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    const-class v1, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioButtonChecked(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    const-class v1, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;I)Z

    move-result v0

    return v0
.end method

.method public isRadioButtonChecked(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    const-class v1, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSpinnerTextSelected(ILjava/lang/String;)Z
    .locals 1
    .parameter "index"
    .parameter "text"

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Checker;->isSpinnerTextSelected(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSpinnerTextSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Checker;->isSpinnerTextSelected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTextChecked(Ljava/lang/String;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2170
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/widget/CheckedTextView;

    aput-object v4, v3, v1

    const-class v4, Landroid/widget/CompoundButton;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/Waiter;->waitForViews([Ljava/lang/Class;)Z

    .line 2172
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v3, Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    invoke-virtual {v2, p1}, Lcom/jayway/android/robotium/solo/Checker;->isCheckedTextChecked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2178
    :cond_0
    :goto_0
    return v0

    .line 2175
    :cond_1
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v3, Landroid/widget/CompoundButton;

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    const-class v3, Landroid/widget/CompoundButton;

    invoke-virtual {v2, v3, p1}, Lcom/jayway/android/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 2178
    goto :goto_0
.end method

.method public isToggleButtonChecked(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    const-class v1, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;I)Z

    move-result v0

    return v0
.end method

.method public isToggleButtonChecked(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->checker:Lcom/jayway/android/robotium/solo/Checker;

    const-class v1, Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1, p1}, Lcom/jayway/android/robotium/solo/Checker;->isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pinchToZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .parameter "startPoint1"
    .parameter "startPoint2"
    .parameter "endPoint1"
    .parameter "endPoint2"

    .prologue
    .line 1448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1449
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pinchToZoom() requires API level >= 14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->zoomer:Lcom/jayway/android/robotium/solo/Zoomer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jayway/android/robotium/solo/Zoomer;->generateZoomGesture(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1452
    return-void
.end method

.method public pressMenuItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->presser:Lcom/jayway/android/robotium/solo/Presser;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Presser;->pressMenuItem(I)V

    .line 907
    return-void
.end method

.method public pressMenuItem(II)V
    .locals 1
    .parameter "index"
    .parameter "itemsPerRow"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->presser:Lcom/jayway/android/robotium/solo/Presser;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Presser;->pressMenuItem(II)V

    .line 921
    return-void
.end method

.method public pressSpinnerItem(II)V
    .locals 1
    .parameter "spinnerIndex"
    .parameter "itemIndex"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->presser:Lcom/jayway/android/robotium/solo/Presser;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Presser;->pressSpinnerItem(II)V

    .line 935
    return-void
.end method

.method public rotateLarge(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .parameter "center1"
    .parameter "center2"

    .prologue
    .line 1481
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1482
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "rotateLarge(PointF center1, PointF center2) requires API level >= 14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->rotator:Lcom/jayway/android/robotium/solo/Rotator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/jayway/android/robotium/solo/Rotator;->generateRotateGesture(ILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1485
    return-void
.end method

.method public rotateSmall(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .parameter "center1"
    .parameter "center2"

    .prologue
    .line 1496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1497
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "rotateSmall(PointF center1, PointF center2) requires API level >= 14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->rotator:Lcom/jayway/android/robotium/solo/Rotator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/jayway/android/robotium/solo/Rotator;->generateRotateGesture(ILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1500
    return-void
.end method

.method public scrollDown()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1251
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/widget/AbsListView;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-class v3, Landroid/widget/ScrollView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForViews([Ljava/lang/Class;)Z

    .line 1252
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v0, v4}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(I)Z

    move-result v0

    return v0
.end method

.method public scrollDownList(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 1347
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v0, p1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v1, v0, v3, v3}, Lcom/jayway/android/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result v0

    return v0
.end method

.method public scrollDownList(Landroid/widget/AbsListView;)Z
    .locals 2
    .parameter "list"

    .prologue
    const/4 v1, 0x0

    .line 1299
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v0, p1, v1, v1}, Lcom/jayway/android/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result v0

    return v0
.end method

.method public scrollListToBottom(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v0, p1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/jayway/android/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result v0

    return v0
.end method

.method public scrollListToBottom(Landroid/widget/AbsListView;)Z
    .locals 3
    .parameter "list"

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result v0

    return v0
.end method

.method public scrollListToLine(II)V
    .locals 3
    .parameter "index"
    .parameter "line"

    .prologue
    .line 1405
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v2, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v1, v0, p2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    .line 1406
    return-void
.end method

.method public scrollListToLine(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "absListView"
    .parameter "line"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V

    .line 1395
    return-void
.end method

.method public scrollListToTop(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 1383
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v0, p1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v1, v0, v3, v3}, Lcom/jayway/android/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result v0

    return v0
.end method

.method public scrollListToTop(Landroid/widget/AbsListView;)Z
    .locals 2
    .parameter "list"

    .prologue
    const/4 v1, 0x1

    .line 1335
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v0, p1, v1, v1}, Lcom/jayway/android/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result v0

    return v0
.end method

.method public scrollToBottom()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1261
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/widget/AbsListView;

    aput-object v2, v1, v4

    const-class v2, Landroid/widget/ScrollView;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForViews([Ljava/lang/Class;)Z

    .line 1262
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v0, v4, v5}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(IZ)Z

    .line 1263
    return-void
.end method

.method public scrollToSide(I)V
    .locals 2
    .parameter "side"

    .prologue
    .line 1416
    packed-switch p1, :pswitch_data_0

    .line 1420
    :goto_0
    return-void

    .line 1417
    :pswitch_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    sget-object v1, Lcom/jayway/android/robotium/solo/Scroller$Side;->RIGHT:Lcom/jayway/android/robotium/solo/Scroller$Side;

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Scroller;->scrollToSide(Lcom/jayway/android/robotium/solo/Scroller$Side;)V

    goto :goto_0

    .line 1418
    :pswitch_1
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    sget-object v1, Lcom/jayway/android/robotium/solo/Scroller$Side;->LEFT:Lcom/jayway/android/robotium/solo/Scroller$Side;

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Scroller;->scrollToSide(Lcom/jayway/android/robotium/solo/Scroller$Side;)V

    goto :goto_0

    .line 1416
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollToTop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1286
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/widget/AbsListView;

    aput-object v3, v1, v2

    const-class v2, Landroid/widget/ScrollView;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForViews([Ljava/lang/Class;)Z

    .line 1287
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v0, v4, v4}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(IZ)Z

    .line 1288
    return-void
.end method

.method public scrollUp()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1276
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/widget/AbsListView;

    aput-object v3, v1, v2

    const-class v2, Landroid/widget/ScrollView;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForViews([Ljava/lang/Class;)Z

    .line 1277
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    invoke-virtual {v0, v4}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(I)Z

    move-result v0

    return v0
.end method

.method public scrollUpList(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 1371
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v0, p1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/jayway/android/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result v0

    return v0
.end method

.method public scrollUpList(Landroid/widget/AbsListView;)Z
    .locals 3
    .parameter "list"

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/jayway/android/robotium/solo/Scroller;->scrollList(Landroid/widget/AbsListView;IZ)Z

    move-result v0

    return v0
.end method

.method public scrollViewToSide(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "side"

    .prologue
    .line 1431
    packed-switch p2, :pswitch_data_0

    .line 1435
    :goto_0
    return-void

    .line 1432
    :pswitch_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    sget-object v1, Lcom/jayway/android/robotium/solo/Scroller$Side;->RIGHT:Lcom/jayway/android/robotium/solo/Scroller$Side;

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Scroller;->scrollViewToSide(Landroid/view/View;Lcom/jayway/android/robotium/solo/Scroller$Side;)V

    goto :goto_0

    .line 1433
    :pswitch_1
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    sget-object v1, Lcom/jayway/android/robotium/solo/Scroller$Side;->LEFT:Lcom/jayway/android/robotium/solo/Scroller$Side;

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Scroller;->scrollViewToSide(Landroid/view/View;Lcom/jayway/android/robotium/solo/Scroller$Side;)V

    goto :goto_0

    .line 1431
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public searchButton(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 446
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/Button;

    const/4 v4, 0x1

    move-object v2, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchButton(Ljava/lang/String;I)Z
    .locals 6
    .parameter "text"
    .parameter "minimumNumberOfMatches"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/Button;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchButton(Ljava/lang/String;IZ)Z
    .locals 6
    .parameter "text"
    .parameter "minimumNumberOfMatches"
    .parameter "onlyVisible"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/Button;

    const/4 v4, 0x1

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchButton(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "text"
    .parameter "onlyVisible"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/Button;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchEditText(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    .line 432
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/EditText;

    const/4 v5, 0x0

    move-object v2, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchText(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v2, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchText(Ljava/lang/String;I)Z
    .locals 6
    .parameter "text"
    .parameter "minimumNumberOfMatches"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/TextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchText(Ljava/lang/String;IZ)Z
    .locals 6
    .parameter "text"
    .parameter "minimumNumberOfMatches"
    .parameter "scroll"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchText(Ljava/lang/String;IZZ)Z
    .locals 6
    .parameter "text"
    .parameter "minimumNumberOfMatches"
    .parameter "scroll"
    .parameter "onlyVisible"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/TextView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchText(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "text"
    .parameter "onlyVisible"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchToggleButton(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/ToggleButton;

    const/4 v4, 0x1

    move-object v2, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public searchToggleButton(Ljava/lang/String;I)Z
    .locals 6
    .parameter "text"
    .parameter "minimumNumberOfMatches"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->searcher:Lcom/jayway/android/robotium/solo/Searcher;

    const-class v1, Landroid/widget/ToggleButton;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Searcher;->searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method public sendKey(I)V
    .locals 1
    .parameter "key"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->sender:Lcom/jayway/android/robotium/solo/Sender;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Sender;->sendKeyCode(I)V

    .line 2228
    return-void
.end method

.method public setActivityOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->setActivityOrientation(I)V

    .line 614
    return-void
.end method

.method public setDatePicker(IIII)V
    .locals 2
    .parameter "index"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v1, Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/jayway/android/robotium/solo/Solo;->setDatePicker(Landroid/widget/DatePicker;III)V

    .line 1514
    return-void
.end method

.method public setDatePicker(Landroid/widget/DatePicker;III)V
    .locals 2
    .parameter "datePicker"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 1528
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->setter:Lcom/jayway/android/robotium/solo/Setter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jayway/android/robotium/solo/Setter;->setDatePicker(Landroid/widget/DatePicker;III)V

    .line 1529
    return-void
.end method

.method public setProgressBar(II)V
    .locals 2
    .parameter "index"
    .parameter "progress"

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v1, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, p2}, Lcom/jayway/android/robotium/solo/Solo;->setProgressBar(Landroid/widget/ProgressBar;I)V

    .line 1569
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;I)V
    .locals 2
    .parameter "progressBar"
    .parameter "progress"

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 1581
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->setter:Lcom/jayway/android/robotium/solo/Setter;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Setter;->setProgressBar(Landroid/widget/ProgressBar;I)V

    .line 1582
    return-void
.end method

.method public setSlidingDrawer(II)V
    .locals 2
    .parameter "index"
    .parameter "status"

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v1, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {p0, v0, p2}, Lcom/jayway/android/robotium/solo/Solo;->setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V

    .line 1594
    return-void
.end method

.method public setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V
    .locals 2
    .parameter "slidingDrawer"
    .parameter "status"

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 1606
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->setter:Lcom/jayway/android/robotium/solo/Setter;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Setter;->setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V

    .line 1607
    return-void
.end method

.method public setTimePicker(III)V
    .locals 2
    .parameter "index"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v1, Landroid/widget/TimePicker;

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    invoke-virtual {p0, v0, p2, p3}, Lcom/jayway/android/robotium/solo/Solo;->setTimePicker(Landroid/widget/TimePicker;II)V

    .line 1542
    return-void
.end method

.method public setTimePicker(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "timePicker"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 1555
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->setter:Lcom/jayway/android/robotium/solo/Setter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jayway/android/robotium/solo/Setter;->setTimePicker(Landroid/widget/TimePicker;II)V

    .line 1556
    return-void
.end method

.method public sleep(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    .line 2405
    return-void
.end method

.method public startScreenshotSequence(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 2477
    const/16 v0, 0x50

    const/16 v1, 0x190

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jayway/android/robotium/solo/Solo;->startScreenshotSequence(Ljava/lang/String;III)V

    .line 2481
    return-void
.end method

.method public startScreenshotSequence(Ljava/lang/String;III)V
    .locals 1
    .parameter "name"
    .parameter "quality"
    .parameter "frameDelay"
    .parameter "maxFrames"

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->screenshotTaker:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->startScreenshotSequence(Ljava/lang/String;III)V

    .line 2508
    return-void
.end method

.method public stopScreenshotSequence()V
    .locals 1

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->screenshotTaker:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->stopScreenshotSequence()V

    .line 2518
    return-void
.end method

.method public swipe(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .parameter "startPoint1"
    .parameter "startPoint2"
    .parameter "endPoint1"
    .parameter "endPoint2"

    .prologue
    .line 1465
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1466
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "swipe() requires API level >= 14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->swiper:Lcom/jayway/android/robotium/solo/Swiper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jayway/android/robotium/solo/Swiper;->generateSwipeGesture(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1470
    return-void
.end method

.method public takeScreenshot()V
    .locals 1

    .prologue
    .line 2434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jayway/android/robotium/solo/Solo;->takeScreenshot(Ljava/lang/String;)V

    .line 2435
    return-void
.end method

.method public takeScreenshot(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 2445
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/Solo;->takeScreenshot(Ljava/lang/String;I)V

    .line 2446
    return-void
.end method

.method public takeScreenshot(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "quality"

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->screenshotTaker:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->takeScreenshot(Ljava/lang/String;I)V

    .line 2458
    return-void
.end method

.method public typeText(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "text"

    .prologue
    .line 1660
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->textEnterer:Lcom/jayway/android/robotium/solo/TextEnterer;

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v2, Landroid/widget/EditText;

    invoke-virtual {v0, p1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v1, v0, p2}, Lcom/jayway/android/robotium/solo/TextEnterer;->typeText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1661
    return-void
.end method

.method public typeText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2
    .parameter "editText"
    .parameter "text"

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;I)Z

    .line 1673
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->textEnterer:Lcom/jayway/android/robotium/solo/TextEnterer;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/TextEnterer;->typeText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1674
    return-void
.end method

.method public typeTextInWebElement(Lcom/jayway/android/robotium/solo/By;Ljava/lang/String;)V
    .locals 3
    .parameter "by"
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 1685
    invoke-virtual {p0, p1}, Lcom/jayway/android/robotium/solo/Solo;->clickOnWebElement(Lcom/jayway/android/robotium/solo/By;)V

    .line 1686
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/jayway/android/robotium/solo/ActivityUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 1687
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p2}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    .line 1688
    return-void
.end method

.method public typeTextInWebElement(Lcom/jayway/android/robotium/solo/By;Ljava/lang/String;I)V
    .locals 3
    .parameter "by"
    .parameter "text"
    .parameter "match"

    .prologue
    const/4 v2, 0x1

    .line 1700
    invoke-virtual {p0, p1, p3}, Lcom/jayway/android/robotium/solo/Solo;->clickOnWebElement(Lcom/jayway/android/robotium/solo/By;I)V

    .line 1701
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/jayway/android/robotium/solo/ActivityUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 1702
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p2}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    .line 1703
    return-void
.end method

.method public typeTextInWebElement(Lcom/jayway/android/robotium/solo/WebElement;Ljava/lang/String;)V
    .locals 3
    .parameter "webElement"
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 1714
    invoke-virtual {p0, p1}, Lcom/jayway/android/robotium/solo/Solo;->clickOnWebElement(Lcom/jayway/android/robotium/solo/WebElement;)V

    .line 1715
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/jayway/android/robotium/solo/ActivityUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 1716
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p2}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    .line 1717
    return-void
.end method

.method public waitForActivity(Ljava/lang/Class;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2276
    .local p1, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForActivity(Ljava/lang/Class;I)Z

    move-result v0

    return v0
.end method

.method public waitForActivity(Ljava/lang/Class;I)Z
    .locals 1
    .parameter
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2290
    .local p1, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForActivity(Ljava/lang/Class;I)Z

    move-result v0

    return v0
.end method

.method public waitForActivity(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForActivity(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public waitForActivity(Ljava/lang/String;I)Z
    .locals 1
    .parameter "name"
    .parameter "timeout"

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForActivity(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public waitForCondition(Lcom/jayway/android/robotium/solo/Condition;I)Z
    .locals 1
    .parameter "condition"
    .parameter "timeout"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForCondition(Lcom/jayway/android/robotium/solo/Condition;I)Z

    move-result v0

    return v0
.end method

.method public waitForDialogToClose(J)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/DialogUtils;->waitForDialogToClose(J)Z

    move-result v0

    return v0
.end method

.method public waitForDialogToOpen(J)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->dialogUtils:Lcom/jayway/android/robotium/solo/DialogUtils;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/DialogUtils;->waitForDialogToOpen(J)Z

    move-result v0

    return v0
.end method

.method public waitForFragmentById(I)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForFragment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public waitForFragmentById(II)Z
    .locals 2
    .parameter "id"
    .parameter "timeout"

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForFragment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public waitForFragmentByTag(Ljava/lang/String;)Z
    .locals 3
    .parameter "tag"

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForFragment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public waitForFragmentByTag(Ljava/lang/String;I)Z
    .locals 2
    .parameter "tag"
    .parameter "timeout"

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForFragment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public waitForLogMessage(Ljava/lang/String;)Z
    .locals 2
    .parameter "logMessage"

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForLogMessage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public waitForLogMessage(Ljava/lang/String;I)Z
    .locals 1
    .parameter "logMessage"
    .parameter "timeout"

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForLogMessage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public waitForText(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitForText(Ljava/lang/String;IJ)Z
    .locals 1
    .parameter "text"
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJ)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitForText(Ljava/lang/String;IJZ)Z
    .locals 6
    .parameter "text"
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitForText(Ljava/lang/String;IJZZ)Z
    .locals 8
    .parameter "text"
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"
    .parameter "onlyVisible"

    .prologue
    const/4 v7, 0x1

    .line 246
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public waitForView(I)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jayway/android/robotium/solo/Solo;->waitForView(IIIZ)Z

    move-result v0

    return v0
.end method

.method public waitForView(III)Z
    .locals 1
    .parameter "id"
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jayway/android/robotium/solo/Solo;->waitForView(IIIZ)Z

    move-result v0

    return v0
.end method

.method public waitForView(IIIZ)Z
    .locals 3
    .parameter "id"
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"

    .prologue
    const/4 v1, 0x1

    .line 284
    add-int/lit8 v0, p2, -0x1

    .line 286
    .local v0, index:I
    if-ge v0, v1, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 289
    :cond_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v2, p1, v0, p3, p4}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(IIIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public waitForView(Landroid/view/View;)Z
    .locals 1
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public waitForView(Landroid/view/View;IZ)Z
    .locals 1
    .parameter "view"
    .parameter "timeout"
    .parameter "scroll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "IZ)Z"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Landroid/view/View;IZ)Z

    move-result v0

    return v0
.end method

.method public waitForView(Ljava/lang/Class;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const/4 v1, 0x0

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IIZ)Z

    move-result v0

    return v0
.end method

.method public waitForView(Ljava/lang/Class;II)Z
    .locals 3
    .parameter
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;II)Z"
        }
    .end annotation

    .prologue
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v2, 0x1

    .line 341
    add-int/lit8 v0, p2, -0x1

    .line 343
    .local v0, index:I
    if-ge v0, v2, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v1, p1, v0, p3, v2}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IIZ)Z

    move-result v1

    return v1
.end method

.method public waitForView(Ljava/lang/Class;IIZ)Z
    .locals 2
    .parameter
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;IIZ)Z"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    add-int/lit8 v0, p2, -0x1

    .line 363
    .local v0, index:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/jayway/android/robotium/solo/Waiter;->waitForView(Ljava/lang/Class;IIZ)Z

    move-result v1

    return v1
.end method

.method public waitForWebElement(Lcom/jayway/android/robotium/solo/By;)Z
    .locals 4
    .parameter "by"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getLargeTimeout()I

    move-result v3

    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/jayway/android/robotium/solo/Waiter;->waitForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Lcom/jayway/android/robotium/solo/WebElement;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public waitForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Z
    .locals 1
    .parameter "by"
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jayway/android/robotium/solo/Waiter;->waitForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Lcom/jayway/android/robotium/solo/WebElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitForWebElement(Lcom/jayway/android/robotium/solo/By;IZ)Z
    .locals 2
    .parameter "by"
    .parameter "timeout"
    .parameter "scroll"

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Solo;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/jayway/android/robotium/solo/Waiter;->waitForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Lcom/jayway/android/robotium/solo/WebElement;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
