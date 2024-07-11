.class public Lcom/tapjoy/internal/gl;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gl$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/gl$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;)J
    .registers 3

    .line 245
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    .line 246
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 247
    :cond_b
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 248
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 250
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$a;
    .registers 3

    .line 53
    new-instance v0, Lcom/tapjoy/internal/gl$a;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/gl$a;-><init>(Lcom/tapjoy/internal/gl;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .registers 6

    .line 147
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/gl$a;

    .line 148
    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_3b

    .line 150
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_23

    .line 151
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 152
    :cond_23
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3b

    .line 153
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 154
    const/4 p1, 0x1

    return p1

    .line 155
    :cond_31
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 156
    const/4 p1, 0x0

    return p1

    .line 160
    :cond_3b
    goto :goto_6

    .line 161
    :cond_3c
    return p2
.end method

.method public final b(Ljava/lang/String;)J
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/gl$a;

    .line 223
    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_2f

    .line 225
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_23

    .line 226
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 227
    :cond_23
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2f

    .line 229
    :try_start_27
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2d} :catch_2e

    return-wide v0

    .line 230
    :catch_2e
    move-exception v1

    .line 235
    :cond_2f
    goto :goto_6

    .line 236
    :cond_30
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gk;
    .registers 14

    .line 331
    iget-object v0, p0, Lcom/tapjoy/internal/gl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/gl$a;

    .line 332
    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/gl$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 333
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_61

    .line 334
    check-cast v1, Ljava/util/List;

    .line 336
    :try_start_1c
    new-instance v11, Lcom/tapjoy/internal/gk;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/gl;->a(Ljava/lang/Object;)J

    move-result-wide v3

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/gl;->a(Ljava/lang/Object;)J

    move-result-wide v5

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/gl;->a(Ljava/lang/Object;)J

    move-result-wide v7

    const/4 v2, 0x3

    .line 337
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1290
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_4a

    .line 1291
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    move-wide v9, v1

    goto :goto_55

    .line 1292
    :cond_4a
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5a

    .line 1293
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    move-wide v9, v1

    .line 337
    :goto_55
    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/tapjoy/internal/gk;-><init>(JJJD)V

    .line 336
    return-object v11

    .line 1295
    :cond_5a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_60} :catch_60

    .line 338
    :catch_60
    move-exception v1

    .line 342
    :cond_61
    goto :goto_6

    .line 343
    :cond_62
    sget-object p1, Lcom/tapjoy/internal/gk;->a:Lcom/tapjoy/internal/gk;

    return-object p1
.end method

.method protected setChanged()V
    .registers 1

    .line 60
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 61
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl;->notifyObservers()V

    .line 62
    return-void
.end method
