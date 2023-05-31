.class public Lcom/JoyFramework/remote/bean/p;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gift"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "surplus"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show"
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
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 42
    iput p1, p0, Lcom/JoyFramework/remote/bean/p;->d:I

    .line 43
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/p;->f:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/p;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/p;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/JoyFramework/remote/bean/p;->d:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/p;->e:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/p;->f:Ljava/lang/Object;

    return-object v0
.end method
