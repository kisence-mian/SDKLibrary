.class public Lcom/tramini/plugin/a/f/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tramini/plugin/a/f/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/tramini/plugin/a/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/f/a$a;)V
    .registers 6

    .prologue
    .line 26
    if-nez p0, :cond_7

    .line 28
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/tramini/plugin/a/f/a$a;->a(Lcom/tramini/plugin/a/b/a;)V

    .line 99
    :goto_6
    return-void

    .line 33
    :cond_7
    invoke-static {}, Lcom/tramini/plugin/a/f/a/a;->a()Lcom/tramini/plugin/a/f/a/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/f/a$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/tramini/plugin/a/f/a$1;-><init>(Lcom/tramini/plugin/b/a;Lcom/tramini/plugin/a/f/a$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/f/a/a;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method
