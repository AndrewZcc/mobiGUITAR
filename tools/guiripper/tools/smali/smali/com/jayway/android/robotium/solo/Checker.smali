.class Lcom/jayway/android/robotium/solo/Checker;
.super Ljava/lang/Object;
.source "Checker.java"


# instance fields
.field private final viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

.field private final waiter:Lcom/jayway/android/robotium/solo/Waiter;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Waiter;)V
    .locals 0
    .parameter "viewFetcher"
    .parameter "waiter"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Checker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    .line 32
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Checker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    .line 33
    return-void
.end method


# virtual methods
.method public isButtonChecked(Ljava/lang/Class;I)Z
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/CompoundButton;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, expectedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Checker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-virtual {v0, p2, p1}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/CompoundButton;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, expectedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Checker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    int-to-long v4, v1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object v7

    check-cast v7, Landroid/widget/CompoundButton;

    .line 61
    .local v7, button:Landroid/widget/CompoundButton;,"TT;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return v6

    :cond_0
    move v6, v3

    goto :goto_0
.end method

.method public isCheckedTextChecked(Ljava/lang/String;)Z
    .locals 8
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Checker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v1, Landroid/widget/CheckedTextView;

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v4, v2

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/jayway/android/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckedTextView;

    .line 79
    .local v7, checkedTextView:Landroid/widget/CheckedTextView;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return v6

    :cond_0
    move v6, v3

    goto :goto_0
.end method

.method public isSpinnerTextSelected(ILjava/lang/String;)Z
    .locals 5
    .parameter "spinnerIndex"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Checker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v4, Landroid/widget/Spinner;

    invoke-virtual {v3, p1, v4}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 116
    .local v0, spinner:Landroid/widget/Spinner;
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    const/4 v2, 0x1

    .line 120
    :cond_0
    return v2
.end method

.method public isSpinnerTextSelected(Ljava/lang/String;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Checker;->waiter:Lcom/jayway/android/robotium/solo/Waiter;

    const-class v4, Landroid/widget/Spinner;

    invoke-virtual {v3, v2, v4}, Lcom/jayway/android/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    .line 97
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Checker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v4, Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 98
    .local v1, spinnerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Spinner;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 99
    invoke-virtual {p0, v0, p1}, Lcom/jayway/android/robotium/solo/Checker;->isSpinnerTextSelected(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    const/4 v2, 0x1

    .line 102
    :cond_0
    return v2

    .line 98
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
