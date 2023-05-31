.class public Lcom/JoyFramework/remote/bean/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/h;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/JoyFramework/remote/bean/h;->b:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/h;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/JoyFramework/remote/bean/h;->b:Ljava/lang/String;

    .line 22
    iput-wide p3, p0, Lcom/JoyFramework/remote/bean/h;->c:J

    .line 23
    iput-wide p5, p0, Lcom/JoyFramework/remote/bean/h;->d:J

    .line 24
    return-void
.end method


# virtual methods
.method public a()I
    .registers 5

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/JoyFramework/remote/bean/h;->c:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/h;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b()I
    .registers 5

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Long;

    iget-wide v2, p0, Lcom/JoyFramework/remote/bean/h;->d:J

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/JoyFramework/remote/bean/h;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/JoyFramework/remote/bean/h;->b:Ljava/lang/String;

    return-object v0
.end method
