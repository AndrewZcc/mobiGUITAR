.class Lcom/jayway/android/robotium/solo/TextEnterer$1;
.super Ljava/lang/Object;
.source "TextEnterer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/android/robotium/solo/TextEnterer;->setEditText(Landroid/widget/EditText;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/TextEnterer;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$previousText:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/TextEnterer;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->this$0:Lcom/jayway/android/robotium/solo/TextEnterer;

    iput-object p2, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$previousText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 53
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->performClick()Z

    .line 54
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->this$0:Lcom/jayway/android/robotium/solo/TextEnterer;

    #getter for: Lcom/jayway/android/robotium/solo/TextEnterer;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;
    invoke-static {v0}, Lcom/jayway/android/robotium/solo/TextEnterer;->access$000(Lcom/jayway/android/robotium/solo/TextEnterer;)Lcom/jayway/android/robotium/solo/ActivityUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 55
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$text:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$editText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$previousText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/TextEnterer$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0
.end method
