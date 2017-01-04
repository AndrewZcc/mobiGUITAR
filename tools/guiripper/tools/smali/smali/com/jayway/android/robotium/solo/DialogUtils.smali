.class Lcom/jayway/android/robotium/solo/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# instance fields
.field private final MINISLEEP:I

.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sleeper;)V
    .locals 1
    .parameter "activityUtils"
    .parameter "viewFetcher"
    .parameter "sleeper"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x32

    iput v0, p0, Lcom/jayway/android/robotium/solo/DialogUtils;->MINISLEEP:I

    .line 33
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/DialogUtils;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 34
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/DialogUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    .line 35
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/DialogUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 36
    return-void
.end method

.method private isDialogOpen()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v7, p0, Lcom/jayway/android/robotium/solo/DialogUtils;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v7, v6}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    .line 90
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/jayway/android/robotium/solo/DialogUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v8, p0, Lcom/jayway/android/robotium/solo/DialogUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v8}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getWindowDecorViews()[Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getRecentDecorView([Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 91
    .local v4, view:Landroid/view/View;
    const/4 v5, 0x0

    .line 92
    .local v5, viewContext:Landroid/content/Context;
    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 95
    :cond_0
    instance-of v7, v5, Landroid/view/ContextThemeWrapper;

    if-eqz v7, :cond_1

    move-object v3, v5

    .line 96
    check-cast v3, Landroid/view/ContextThemeWrapper;

    .line 97
    .local v3, ctw:Landroid/view/ContextThemeWrapper;
    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 100
    .end local v3           #ctw:Landroid/view/ContextThemeWrapper;
    :cond_1
    move-object v2, v0

    .line 101
    .local v2, activityContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 102
    .local v1, activityBaseContext:Landroid/content/Context;
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    if-eq v4, v7, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6
.end method


# virtual methods
.method public waitForDialogToClose(J)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/jayway/android/robotium/solo/DialogUtils;->waitForDialogToOpen(J)Z

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 50
    .local v0, endTime:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/DialogUtils;->isDialogOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const/4 v2, 0x1

    .line 57
    :goto_1
    return v2

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/DialogUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    goto :goto_0

    .line 57
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public waitForDialogToOpen(J)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 72
    .local v0, endTime:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/DialogUtils;->isDialogOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v2, 0x1

    .line 79
    :goto_1
    return v2

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/DialogUtils;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep(I)V

    goto :goto_0

    .line 79
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
