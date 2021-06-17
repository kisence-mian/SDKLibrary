.class final Lcom/tapjoy/internal/hx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/bd<",
        "Lcom/tapjoy/internal/hx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/tapjoy/internal/bi;)Landroid/graphics/Point;
    .registers 5

    .line 44
    nop

    .line 45
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->h()V

    const/4 v0, 0x0

    .line 47
    :goto_5
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 48
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "offset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->h()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    :goto_1d
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 53
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "x"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 55
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->r()I

    move-result v0

    goto :goto_1d

    .line 56
    :cond_34
    const-string v3, "y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 57
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->r()I

    move-result v1

    goto :goto_1d

    .line 59
    :cond_41
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_1d

    .line 62
    :cond_45
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->i()V

    .line 63
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 64
    move-object v0, v2

    goto :goto_5

    .line 65
    :cond_4f
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_5

    .line 68
    :cond_53
    invoke-virtual {p0}, Lcom/tapjoy/internal/bi;->i()V

    .line 69
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bi;)Ljava/lang/Object;
    .registers 7

    .line 42
    nop

    .line 1074
    nop

    .line 1075
    nop

    .line 1076
    nop

    .line 1078
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 1080
    :goto_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1081
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v3

    .line 1082
    const-string v4, "image"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1083
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v3

    .line 1084
    invoke-static {v3}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1085
    new-instance v0, Lcom/tapjoy/internal/hz;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/tapjoy/internal/hz;-><init>(Ljava/net/URL;)V

    .line 1087
    :cond_30
    goto :goto_a

    :cond_31
    const-string v4, "landscape"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1088
    invoke-static {p1}, Lcom/tapjoy/internal/hx$1;->b(Lcom/tapjoy/internal/bi;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_a

    .line 1089
    :cond_3e
    const-string v4, "portrait"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1090
    invoke-static {p1}, Lcom/tapjoy/internal/hx$1;->b(Lcom/tapjoy/internal/bi;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_a

    .line 1092
    :cond_4b
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_a

    .line 1095
    :cond_4f
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 1097
    new-instance p1, Lcom/tapjoy/internal/hx;

    invoke-direct {p1, v0, v1, v2}, Lcom/tapjoy/internal/hx;-><init>(Lcom/tapjoy/internal/hz;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 42
    return-object p1
.end method
