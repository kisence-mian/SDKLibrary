.class public Lcom/JoyFramework/remote/bean/aj;
.super Lcom/JoyFramework/remote/bean/e;
.source "SourceFile"


# instance fields
.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Code"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Card"
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
    .line 16
    iget v0, p0, Lcom/JoyFramework/remote/bean/aj;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 20
    iput p1, p0, Lcom/JoyFramework/remote/bean/aj;->b:I

    .line 21
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/aj;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/aj;->c:Ljava/lang/String;

    return-object v0
.end method
