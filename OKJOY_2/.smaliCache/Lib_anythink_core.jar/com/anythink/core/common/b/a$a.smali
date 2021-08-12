.class public final Lcom/anythink/core/common/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/b/a;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/a;Ljava/lang/String;Z)V
    .registers 4

    .line 31
    iput-object p1, p0, Lcom/anythink/core/common/b/a$a;->a:Lcom/anythink/core/common/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/anythink/core/common/b/a$a;->b:Ljava/lang/String;

    .line 33
    iput-boolean p3, p0, Lcom/anythink/core/common/b/a$a;->c:Z

    .line 34
    return-void
.end method

.method private b()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/anythink/core/common/b/a$a;->c:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/anythink/core/common/b/a$a;->b:Ljava/lang/String;

    return-object v0
.end method
