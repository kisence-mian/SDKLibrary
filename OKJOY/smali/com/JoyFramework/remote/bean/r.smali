.class public Lcom/JoyFramework/remote/bean/r;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Gift"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/al;",
            ">;"
        }
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/JoyFramework/remote/bean/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/al;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/r;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 30
    iput p1, p0, Lcom/JoyFramework/remote/bean/r;->c:I

    .line 31
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/JoyFramework/remote/bean/al;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/r;->b:Ljava/util/List;

    .line 23
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/JoyFramework/remote/bean/r;->c:I

    return v0
.end method
