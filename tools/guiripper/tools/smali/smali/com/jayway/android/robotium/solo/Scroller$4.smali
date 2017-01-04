.class Lcom/jayway/android/robotium/solo/Scroller$4;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/android/robotium/solo/Scroller;->scrollListToLine(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/Scroller;

.field final synthetic val$lineToMoveTo:I

.field final synthetic val$view:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/Scroller;Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Scroller$4;->this$0:Lcom/jayway/android/robotium/solo/Scroller;

    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Scroller$4;->val$view:Landroid/widget/AbsListView;

    iput p3, p0, Lcom/jayway/android/robotium/solo/Scroller$4;->val$lineToMoveTo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Scroller$4;->val$view:Landroid/widget/AbsListView;

    iget v1, p0, Lcom/jayway/android/robotium/solo/Scroller$4;->val$lineToMoveTo:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 299
    return-void
.end method
