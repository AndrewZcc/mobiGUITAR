.class Lcom/jayway/android/robotium/solo/TextEnterer$2;
.super Ljava/lang/Object;
.source "TextEnterer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/android/robotium/solo/TextEnterer;->typeText(Landroid/widget/EditText;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/TextEnterer;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/TextEnterer;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/TextEnterer$2;->this$0:Lcom/jayway/android/robotium/solo/TextEnterer;

    iput-object p2, p0, Lcom/jayway/android/robotium/solo/TextEnterer$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/TextEnterer$2;->val$editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    return-void
.end method
