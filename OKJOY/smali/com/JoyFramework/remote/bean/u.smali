.class public Lcom/JoyFramework/remote/bean/u;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDCard"
    .end annotation
.end field

.field c:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Adult"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/JoyFramework/remote/bean/u;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/JoyFramework/remote/bean/u;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcom/JoyFramework/remote/bean/u;->b:I

    .line 24
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/JoyFramework/remote/bean/u;->c:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 31
    iput p1, p0, Lcom/JoyFramework/remote/bean/u;->c:I

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IDCardDao{IDCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/JoyFramework/remote/bean/u;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
