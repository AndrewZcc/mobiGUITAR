.class Lcom/jayway/android/robotium/solo/Setter;
.super Ljava/lang/Object;
.source "Setter.java"


# instance fields
.field private final CLOSED:I

.field private final OPENED:I

.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ActivityUtils;)V
    .locals 1
    .parameter "activityUtils"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/jayway/android/robotium/solo/Setter;->CLOSED:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/jayway/android/robotium/solo/Setter;->OPENED:I

    .line 30
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Setter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 31
    return-void
.end method


# virtual methods
.method public setDatePicker(Landroid/widget/DatePicker;III)V
    .locals 7
    .parameter "datePicker"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Setter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/jayway/android/robotium/solo/Setter$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/Setter$1;-><init>(Lcom/jayway/android/robotium/solo/Setter;Landroid/widget/DatePicker;III)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;I)V
    .locals 2
    .parameter "progressBar"
    .parameter "progress"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Setter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/jayway/android/robotium/solo/Setter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/jayway/android/robotium/solo/Setter$3;-><init>(Lcom/jayway/android/robotium/solo/Setter;Landroid/widget/ProgressBar;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V
    .locals 2
    .parameter "slidingDrawer"
    .parameter "status"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Setter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/jayway/android/robotium/solo/Setter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/jayway/android/robotium/solo/Setter$4;-><init>(Lcom/jayway/android/robotium/solo/Setter;ILandroid/widget/SlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    :cond_0
    return-void
.end method

.method public setTimePicker(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "timePicker"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Setter;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/jayway/android/robotium/solo/Setter$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/jayway/android/robotium/solo/Setter$2;-><init>(Lcom/jayway/android/robotium/solo/Setter;Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    return-void
.end method
