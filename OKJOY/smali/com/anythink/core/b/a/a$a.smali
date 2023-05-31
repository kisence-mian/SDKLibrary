.class public final Lcom/anythink/core/b/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/a/a;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/a;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 24
    iput-object p1, p0, Lcom/anythink/core/b/a/a$a;->a:Lcom/anythink/core/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/anythink/core/b/a/a$a;->b:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lcom/anythink/core/b/a/a$a;->c:Z

    .line 27
    return-void
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/anythink/core/b/a/a$a;->c:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/core/b/a/a$a;->b:Ljava/lang/String;

    return-object v0
.end method
