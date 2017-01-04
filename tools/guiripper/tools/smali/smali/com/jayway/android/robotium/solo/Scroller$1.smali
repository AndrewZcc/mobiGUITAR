.class Lcom/jayway/android/robotium/solo/Scroller$1;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/android/robotium/solo/Scroller;->scrollScrollView(Landroid/widget/ScrollView;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/Scroller;

.field final synthetic val$scrollAmount:I

.field final synthetic val$view:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/Scroller;Landroid/widget/ScrollView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Scroller$1;->this$0:Lcom/jayway/android/robotium/solo/Scroller;

    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Scroller$1;->val$view:Landroid/widget/ScrollView;

    iput p3, p0, Lcom/jayway/android/robotium/solo/Scroller$1;->val$scrollAmount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Scroller$1;->val$view:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/jayway/android/robotium/solo/Scroller$1;->val$scrollAmount:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 124
    return-void
.end method
