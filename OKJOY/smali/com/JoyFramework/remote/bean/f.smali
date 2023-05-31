.class public Lcom/JoyFramework/remote/bean/f;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OneKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/JoyFramework/remote/bean/f;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 18
    iput p1, p0, Lcom/JoyFramework/remote/bean/f;->b:I

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BindAccountDao{OneKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
