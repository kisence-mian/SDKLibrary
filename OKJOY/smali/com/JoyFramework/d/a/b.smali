.class public Lcom/JoyFramework/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/JoyFramework/d/a/b;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/JoyFramework/d/a/b;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/JoyFramework/d/a/b;->c:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/JoyFramework/d/a/b;->d:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/d/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/JoyFramework/d/a/b;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/JoyFramework/d/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/JoyFramework/d/a/b;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/JoyFramework/d/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/JoyFramework/d/a/b;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/JoyFramework/d/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/JoyFramework/d/a/b;->d:Ljava/lang/String;

    .line 56
    return-void
.end method
