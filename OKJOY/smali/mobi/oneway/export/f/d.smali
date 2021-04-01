.class public Lmobi/oneway/export/f/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmobi/oneway/export/enums/AdType;",
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/f/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/f/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/oneway/export/f/d;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/oneway/export/f/d;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/f/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmobi/oneway/export/f/d;->d:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/oneway/export/enums/AdType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/f/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_5
.end method

.method public static a(ILmobi/oneway/export/enums/AdType;)Lmobi/oneway/export/f/c;
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/Map;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    invoke-virtual {v0}, Lmobi/oneway/export/f/c;->a()I

    move-result v3

    if-ne v3, p0, :cond_f

    goto :goto_6

    :cond_22
    move-object v0, v1

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lmobi/oneway/export/f/d;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/f/c;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lmobi/oneway/export/f/d;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Lmobi/oneway/export/enums/AdType;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/oneway/export/enums/AdType;",
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/f/c;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/Map;

    :cond_b
    sget-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lmobi/oneway/export/f/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v1}, Lmobi/oneway/export/f/d;->a(Ljava/lang/String;Z)V

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    sget-object v0, Lmobi/oneway/export/f/d;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, v1}, Lmobi/oneway/export/f/d;->b(Ljava/lang/String;Z)V

    :cond_17
    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lmobi/oneway/export/f/d;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
