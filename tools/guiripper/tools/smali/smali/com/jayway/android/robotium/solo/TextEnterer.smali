.class Lcom/jayway/android/robotium/solo/TextEnterer;
.super Ljava/lang/Object;
.source "TextEnterer.java"


# instance fields
.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private final clicker:Lcom/jayway/android/robotium/solo/Clicker;

.field private final inst:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/Clicker;)V
    .locals 0
    .parameter "inst"
    .parameter "activityUtils"
    .parameter "clicker"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->inst:Landroid/app/Instrumentation;

    .line 33
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 34
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/jayway/android/robotium/solo/TextEnterer;)Lcom/jayway/android/robotium/solo/ActivityUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    return-object v0
.end method


# virtual methods
.method public setEditText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3
    .parameter "editText"
    .parameter "text"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, previousText:Ljava/lang/String;
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->inst:Landroid/app/Instrumentation;

    new-instance v2, Lcom/jayway/android/robotium/solo/TextEnterer$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/jayway/android/robotium/solo/TextEnterer$1;-><init>(Lcom/jayway/android/robotium/solo/TextEnterer;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 64
    .end local v0           #previousText:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public typeText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 7
    .parameter "editText"
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->inst:Landroid/app/Instrumentation;

    new-instance v4, Lcom/jayway/android/robotium/solo/TextEnterer$2;

    invoke-direct {v4, p0, p1}, Lcom/jayway/android/robotium/solo/TextEnterer$2;-><init>(Lcom/jayway/android/robotium/solo/TextEnterer;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 82
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->clicker:Lcom/jayway/android/robotium/solo/Clicker;

    invoke-virtual {v3, p1, v6, v6}, Lcom/jayway/android/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    .line 83
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v3, p1, v5, v5}, Lcom/jayway/android/robotium/solo/ActivityUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, successfull:Z
    const/4 v1, 0x0

    .line 88
    .local v1, retry:I
    :goto_0
    if-nez v2, :cond_0

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, p2}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v2, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/TextEnterer;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v3, p1, v5, v5}, Lcom/jayway/android/robotium/solo/ActivityUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_0
    if-nez v2, :cond_1

    .line 99
    const-string v3, "Text can not be typed!"

    invoke-static {v3, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 102
    .end local v1           #retry:I
    .end local v2           #successfull:Z
    :cond_1
    return-void
.end method
