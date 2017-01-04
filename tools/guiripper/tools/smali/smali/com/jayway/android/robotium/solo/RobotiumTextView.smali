.class Lcom/jayway/android/robotium/solo/RobotiumTextView;
.super Landroid/widget/TextView;
.source "RobotiumTextView.java"


# instance fields
.field private locationX:I

.field private locationY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    iput v0, p0, Lcom/jayway/android/robotium/solo/RobotiumTextView;->locationX:I

    .line 15
    iput v0, p0, Lcom/jayway/android/robotium/solo/RobotiumTextView;->locationY:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .parameter "context"
    .parameter "text"
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    iput v0, p0, Lcom/jayway/android/robotium/solo/RobotiumTextView;->locationX:I

    .line 15
    iput v0, p0, Lcom/jayway/android/robotium/solo/RobotiumTextView;->locationY:I

    .line 36
    invoke-virtual {p0, p2}, Lcom/jayway/android/robotium/solo/RobotiumTextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0, p3}, Lcom/jayway/android/robotium/solo/RobotiumTextView;->setLocationX(I)V

    .line 38
    invoke-virtual {p0, p4}, Lcom/jayway/android/robotium/solo/RobotiumTextView;->setLocationY(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getLocationOnScreen([I)V
    .locals 2
    .parameter "location"

    .prologue
    .line 48
    const/4 v0, 0x0

    iget v1, p0, Lcom/jayway/android/robotium/solo/RobotiumTextView;->locationX:I

    aput v1, p1, v0

    .line 49
    const/4 v0, 0x1

    iget v1, p0, Lcom/jayway/android/robotium/solo/RobotiumTextView;->locationY:I

    aput v1, p1, v0

    .line 50
    return-void
.end method

.method public setLocationX(I)V
    .locals 0
    .parameter "locationX"

    .prologue
    .line 59
    iput p1, p0, Lcom/jayway/android/robotium/solo/RobotiumTextView;->locationX:I

    .line 60
    return-void
.end method

.method public setLocationY(I)V
    .locals 0
    .parameter "locationY"

    .prologue
    .line 70
    iput p1, p0, Lcom/jayway/android/robotium/solo/RobotiumTextView;->locationY:I

    .line 71
    return-void
.end method
