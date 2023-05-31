.class public Lcom/JoyFramework/remote/bean/aa;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Patch"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Path"
    .end annotation
.end field

.field d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Ver"
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
    .line 19
    iget v0, p0, Lcom/JoyFramework/remote/bean/aa;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcom/JoyFramework/remote/bean/aa;->b:I

    .line 24
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/aa;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/aa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 39
    iput p1, p0, Lcom/JoyFramework/remote/bean/aa;->d:I

    .line 40
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/JoyFramework/remote/bean/aa;->d:I

    return v0
.end method
