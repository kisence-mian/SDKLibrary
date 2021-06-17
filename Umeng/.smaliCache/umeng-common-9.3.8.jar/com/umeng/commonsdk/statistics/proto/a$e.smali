.class public final enum Lcom/umeng/commonsdk/statistics/proto/a$e;
.super Ljava/lang/Enum;
.source "IdJournal.java"

# interfaces
.implements Lcom/umeng/analytics/pro/ax;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/statistics/proto/a$e;",
        ">;",
        "Lcom/umeng/analytics/pro/ax;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/statistics/proto/a$e;

.field public static final enum b:Lcom/umeng/commonsdk/statistics/proto/a$e;

.field public static final enum c:Lcom/umeng/commonsdk/statistics/proto/a$e;

.field public static final enum d:Lcom/umeng/commonsdk/statistics/proto/a$e;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/umeng/commonsdk/statistics/proto/a$e;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 71
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    const-string v1, "DOMAIN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "domain"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/commonsdk/statistics/proto/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->a:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/a$e;

    const-string v4, "OLD_ID"

    const/4 v5, 0x2

    const-string v6, "old_id"

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/umeng/commonsdk/statistics/proto/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/a$e;

    const-string v6, "NEW_ID"

    const/4 v7, 0x3

    const-string v8, "new_id"

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/umeng/commonsdk/statistics/proto/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/umeng/commonsdk/statistics/proto/a$e;->c:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v6, Lcom/umeng/commonsdk/statistics/proto/a$e;

    const-string v8, "TS"

    const/4 v9, 0x4

    const-string v10, "ts"

    invoke-direct {v6, v8, v7, v9, v10}, Lcom/umeng/commonsdk/statistics/proto/a$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lcom/umeng/commonsdk/statistics/proto/a$e;->d:Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 70
    new-array v8, v9, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/umeng/commonsdk/statistics/proto/a$e;->h:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->e:Ljava/util/Map;

    .line 76
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 77
    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/a$e;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/a$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    goto :goto_4e

    .line 79
    :cond_64
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput-short p3, p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->f:S

    .line 124
    iput-object p4, p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->g:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;
    .registers 1

    .line 86
    packed-switch p0, :pswitch_data_12

    .line 96
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->d:Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-object p0

    .line 92
    :pswitch_8
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->c:Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-object p0

    .line 90
    :pswitch_b
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-object p0

    .line 88
    :pswitch_e
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->a:Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a$e;
    .registers 2

    .line 116
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/commonsdk/statistics/proto/a$e;
    .registers 4

    .line 105
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/proto/a$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_7

    .line 108
    return-object v0

    .line 107
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " doesn\'t exist!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a$e;
    .registers 2

    .line 70
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/proto/a$e;
    .registers 1

    .line 70
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a$e;->h:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/proto/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .registers 2

    .line 128
    iget-short v0, p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->f:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a$e;->g:Ljava/lang/String;

    return-object v0
.end method
