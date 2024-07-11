.class public Lcom/tramini/plugin/a/g/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tramini/plugin/a/g/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/tramini/plugin/a/g/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/g/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/g/a$a;)V
    .registers 6

    .line 33
    if-nez p0, :cond_7

    .line 35
    const/4 p0, 0x0

    invoke-interface {p3, p0}, Lcom/tramini/plugin/a/g/a$a;->a(Lcom/tramini/plugin/a/c/a;)V

    .line 37
    return-void

    .line 40
    :cond_7
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/g/a$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/tramini/plugin/a/g/a$1;-><init>(Lcom/tramini/plugin/b/a;Lcom/tramini/plugin/a/g/a$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
