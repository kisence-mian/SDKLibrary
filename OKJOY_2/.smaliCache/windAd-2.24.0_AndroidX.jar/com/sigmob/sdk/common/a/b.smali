.class public Lcom/sigmob/sdk/common/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/a/b$a;,
        Lcom/sigmob/sdk/common/a/b$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/common/a/b;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/common/a/b;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/Map;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "text"

    sparse-switch v5, :sswitch_data_74

    goto :goto_5a

    :sswitch_35
    const-string v5, "java.lang.string"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    move v4, v6

    goto :goto_5a

    :sswitch_3f
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const/4 v4, 0x3

    goto :goto_5a

    :sswitch_47
    const-string v5, "long"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    move v4, v7

    goto :goto_5a

    :sswitch_51
    const-string v5, "int"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    move v4, v8

    :cond_5a
    :goto_5a
    packed-switch v4, :pswitch_data_86

    const-string v9, "blob"

    goto :goto_62

    :pswitch_60
    const-string v9, "integer"

    :goto_62
    :pswitch_62
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v8

    aput-object v9, v3, v7

    const-string v2, "%s %s "

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_72
    return-object v0

    nop

    :sswitch_data_74
    .sparse-switch
        0x197ef -> :sswitch_51
        0x32c67c -> :sswitch_47
        0x36452d -> :sswitch_3f
        0x7dd94a45 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_60
        :pswitch_60
        :pswitch_62
        :pswitch_62
    .end packed-switch
.end method
