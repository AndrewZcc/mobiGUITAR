.class Lcom/jayway/android/robotium/solo/Setter$1;
.super Ljava/lang/Object;
.source "Setter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/android/robotium/solo/Setter;->setDatePicker(Landroid/widget/DatePicker;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/Setter;

.field final synthetic val$datePicker:Landroid/widget/DatePicker;

.field final synthetic val$dayOfMonth:I

.field final synthetic val$monthOfYear:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/Setter;Landroid/widget/DatePicker;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Setter$1;->this$0:Lcom/jayway/android/robotium/solo/Setter;

    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Setter$1;->val$datePicker:Landroid/widget/DatePicker;

    iput p3, p0, Lcom/jayway/android/robotium/solo/Setter$1;->val$year:I

    iput p4, p0, Lcom/jayway/android/robotium/solo/Setter$1;->val$monthOfYear:I

    iput p5, p0, Lcom/jayway/android/robotium/solo/Setter$1;->val$dayOfMonth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Setter$1;->val$datePicker:Landroid/widget/DatePicker;

    iget v1, p0, Lcom/jayway/android/robotium/solo/Setter$1;->val$year:I

    iget v2, p0, Lcom/jayway/android/robotium/solo/Setter$1;->val$monthOfYear:I

    iget v3, p0, Lcom/jayway/android/robotium/solo/Setter$1;->val$dayOfMonth:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/DatePicker;->updateDate(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method
