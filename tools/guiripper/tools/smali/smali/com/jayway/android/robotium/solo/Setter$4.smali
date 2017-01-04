.class Lcom/jayway/android/robotium/solo/Setter$4;
.super Ljava/lang/Object;
.source "Setter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/android/robotium/solo/Setter;->setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/Setter;

.field final synthetic val$slidingDrawer:Landroid/widget/SlidingDrawer;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/Setter;ILandroid/widget/SlidingDrawer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Setter$4;->this$0:Lcom/jayway/android/robotium/solo/Setter;

    iput p2, p0, Lcom/jayway/android/robotium/solo/Setter$4;->val$status:I

    iput-object p3, p0, Lcom/jayway/android/robotium/solo/Setter$4;->val$slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    :try_start_0
    iget v0, p0, Lcom/jayway/android/robotium/solo/Setter$4;->val$status:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Setter$4;->val$slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Setter$4;->val$slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->open()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
