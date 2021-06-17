.class public Lcom/umeng/commonsdk/config/d;
.super Ljava/lang/Object;
.source "FieldTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/config/d$d;,
        Lcom/umeng/commonsdk/config/d$c;,
        Lcom/umeng/commonsdk/config/d$b;,
        Lcom/umeng/commonsdk/config/d$a;
    }
.end annotation


# static fields
.field public static final a:J = 0x3e8L

.field public static final b:Ljava/lang/String; = "_LAST_FIELD"

.field public static final c:Ljava/lang/String; = "3758096383"

.field public static final d:Ljava/lang/String; = "2147483647"

.field public static final e:Ljava/lang/String; = "262143"

.field public static final f:Ljava/lang/String; = "2047"

.field public static final g:I = 0x40

.field public static h:[Ljava/lang/String;

.field public static i:[Ljava/lang/String;

.field public static j:[Ljava/lang/String;

.field public static k:[Ljava/lang/String;

.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    .line 159
    invoke-static {}, Lcom/umeng/commonsdk/config/d$a;->values()[Lcom/umeng/commonsdk/config/d$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/umeng/commonsdk/config/d$b;->values()[Lcom/umeng/commonsdk/config/d$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/umeng/commonsdk/config/d$c;->values()[Lcom/umeng/commonsdk/config/d$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/umeng/commonsdk/config/d$d;->values()[Lcom/umeng/commonsdk/config/d$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    array-length v0, v0

    if-lez v0, :cond_5b

    .line 168
    const/4 v0, 0x0

    :goto_34
    invoke-static {}, Lcom/umeng/commonsdk/config/d$a;->values()[Lcom/umeng/commonsdk/config/d$a;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_4c

    .line 169
    sget-object v2, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    invoke-static {}, Lcom/umeng/commonsdk/config/d$a;->values()[Lcom/umeng/commonsdk/config/d$a;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/umeng/commonsdk/config/d$a;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 171
    :cond_4c
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_5b

    .line 172
    const-class v2, Lcom/umeng/commonsdk/config/d$a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_5b
    sget-object v0, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    if-eqz v0, :cond_8a

    array-length v0, v0

    if-lez v0, :cond_8a

    .line 177
    const/4 v0, 0x0

    :goto_63
    invoke-static {}, Lcom/umeng/commonsdk/config/d$b;->values()[Lcom/umeng/commonsdk/config/d$b;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_7b

    .line 178
    sget-object v2, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    invoke-static {}, Lcom/umeng/commonsdk/config/d$b;->values()[Lcom/umeng/commonsdk/config/d$b;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/umeng/commonsdk/config/d$b;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 180
    :cond_7b
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_8a

    .line 181
    const-class v2, Lcom/umeng/commonsdk/config/d$b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_8a
    sget-object v0, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    if-eqz v0, :cond_b9

    array-length v0, v0

    if-lez v0, :cond_b9

    .line 186
    const/4 v0, 0x0

    :goto_92
    invoke-static {}, Lcom/umeng/commonsdk/config/d$c;->values()[Lcom/umeng/commonsdk/config/d$c;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_aa

    .line 187
    sget-object v2, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    invoke-static {}, Lcom/umeng/commonsdk/config/d$c;->values()[Lcom/umeng/commonsdk/config/d$c;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/umeng/commonsdk/config/d$c;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 189
    :cond_aa
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_b9

    .line 190
    const-class v2, Lcom/umeng/commonsdk/config/d$c;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_b9
    sget-object v0, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    if-eqz v0, :cond_e8

    array-length v0, v0

    if-lez v0, :cond_e8

    .line 195
    nop

    :goto_c1
    invoke-static {}, Lcom/umeng/commonsdk/config/d$d;->values()[Lcom/umeng/commonsdk/config/d$d;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_d9

    .line 196
    sget-object v0, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    invoke-static {}, Lcom/umeng/commonsdk/config/d$d;->values()[Lcom/umeng/commonsdk/config/d$d;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/umeng/commonsdk/config/d$d;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 198
    :cond_d9
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    if-eqz v0, :cond_e8

    .line 199
    const-class v1, Lcom/umeng/commonsdk/config/d$d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_e8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .line 143
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    const-string v0, "_LAST_FIELD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    .line 144
    const/4 p0, 0x1

    return p0

    .line 146
    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 150
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 151
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 152
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 155
    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method
