.class Lcom/jayway/android/robotium/solo/By$Text;
.super Lcom/jayway/android/robotium/solo/By;
.source "By.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/android/robotium/solo/By;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Text"
.end annotation


# instance fields
.field private final textContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "textContent"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/By;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/By$Text;->textContent:Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/By$Text;->textContent:Ljava/lang/String;

    return-object v0
.end method
