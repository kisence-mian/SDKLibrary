.class public Lcom/tds/tapdb/b/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/tapdb/b/g$q;,
        Lcom/tds/tapdb/b/g$n;,
        Lcom/tds/tapdb/b/g$l;,
        Lcom/tds/tapdb/b/g$p;,
        Lcom/tds/tapdb/b/g$o;,
        Lcom/tds/tapdb/b/g$k;,
        Lcom/tds/tapdb/b/g$r;,
        Lcom/tds/tapdb/b/g$m;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "Date"

.field public static final B:Ljava/lang/String; = "ETag"

.field public static final C:Ljava/lang/String; = "Expires"

.field public static final D:Ljava/lang/String; = "If-None-Match"

.field public static final E:Ljava/lang/String; = "Last-Modified"

.field public static final F:Ljava/lang/String; = "Location"

.field public static final G:Ljava/lang/String; = "Proxy-Authorization"

.field public static final H:Ljava/lang/String; = "Referer"

.field public static final I:Ljava/lang/String; = "Server"

.field public static final J:Ljava/lang/String; = "User-Agent"

.field public static final K:Ljava/lang/String; = "DELETE"

.field public static final L:Ljava/lang/String; = "GET"

.field public static final M:Ljava/lang/String; = "HEAD"

.field public static final N:Ljava/lang/String; = "OPTIONS"

.field public static final O:Ljava/lang/String; = "POST"

.field public static final P:Ljava/lang/String; = "PUT"

.field public static final Q:Ljava/lang/String; = "TRACE"

.field public static final R:Ljava/lang/String; = "charset"

.field private static final S:Ljava/lang/String; = "00content0boundary00"

.field private static final T:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final U:Ljava/lang/String; = "\r\n"

.field private static final V:[Ljava/lang/String;

.field private static W:Ljavax/net/ssl/SSLSocketFactory; = null

.field private static X:Ljavax/net/ssl/HostnameVerifier; = null

.field private static Y:Lcom/tds/tapdb/b/g$m; = null

.field public static final o:Ljava/lang/String; = "UTF-8"

.field public static final p:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final q:Ljava/lang/String; = "application/json"

.field public static final r:Ljava/lang/String; = "gzip"

.field public static final s:Ljava/lang/String; = "Accept"

.field public static final t:Ljava/lang/String; = "Accept-Charset"

.field public static final u:Ljava/lang/String; = "Accept-Encoding"

.field public static final v:Ljava/lang/String; = "Authorization"

.field public static final w:Ljava/lang/String; = "Cache-Control"

.field public static final x:Ljava/lang/String; = "Content-Encoding"

.field public static final y:Ljava/lang/String; = "Content-Length"

.field public static final z:Ljava/lang/String; = "Content-Type"


# instance fields
.field private a:Ljava/net/HttpURLConnection;

.field private final b:Ljava/net/URL;

.field private final c:Ljava/lang/String;

.field private d:Lcom/tds/tapdb/b/g$q;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:J

.field private k:J

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcom/tds/tapdb/b/g$r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/tds/tapdb/b/g;->V:[Ljava/lang/String;

    sget-object v0, Lcom/tds/tapdb/b/g$m;->a:Lcom/tds/tapdb/b/g$m;

    sput-object v0, Lcom/tds/tapdb/b/g;->Y:Lcom/tds/tapdb/b/g$m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/tapdb/b/g;->a:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/tapdb/b/g;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/tapdb/b/g;->h:Z

    const/16 v0, 0x2000

    iput v0, p0, Lcom/tds/tapdb/b/g;->i:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tds/tapdb/b/g;->j:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tds/tapdb/b/g;->k:J

    sget-object v0, Lcom/tds/tapdb/b/g$r;->a:Lcom/tds/tapdb/b/g$r;

    iput-object v0, p0, Lcom/tds/tapdb/b/g;->n:Lcom/tds/tapdb/b/g$r;

    :try_start_1c
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tds/tapdb/b/g;->b:Ljava/net/URL;
    :try_end_27
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_27} :catch_2a

    iput-object p2, p0, Lcom/tds/tapdb/b/g;->c:Ljava/lang/String;

    return-void

    :catch_2a
    move-exception p1

    new-instance p2, Lcom/tds/tapdb/b/g$o;

    invoke-direct {p2, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/tapdb/b/g;->a:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/tapdb/b/g;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/tapdb/b/g;->h:Z

    const/16 v0, 0x2000

    iput v0, p0, Lcom/tds/tapdb/b/g;->i:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tds/tapdb/b/g;->j:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tds/tapdb/b/g;->k:J

    sget-object v0, Lcom/tds/tapdb/b/g$r;->a:Lcom/tds/tapdb/b/g$r;

    iput-object v0, p0, Lcom/tds/tapdb/b/g;->n:Lcom/tds/tapdb/b/g$r;

    iput-object p1, p0, Lcom/tds/tapdb/b/g;->b:Ljava/net/URL;

    iput-object p2, p0, Lcom/tds/tapdb/b/g;->c:Ljava/lang/String;

    return-void
.end method

.method private static A()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/b/g;->X:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_b

    new-instance v0, Lcom/tds/tapdb/b/g$c;

    invoke-direct {v0}, Lcom/tds/tapdb/b/g$c;-><init>()V

    sput-object v0, Lcom/tds/tapdb/b/g;->X:Ljavax/net/ssl/HostnameVerifier;

    :cond_b
    sget-object v0, Lcom/tds/tapdb/b/g;->X:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic a(Lcom/tds/tapdb/b/g;)I
    .registers 1

    iget p0, p0, Lcom/tds/tapdb/b/g;->i:I

    return p0
.end method

.method static synthetic a(Lcom/tds/tapdb/b/g;J)J
    .registers 3

    iput-wide p1, p0, Lcom/tds/tapdb/b/g;->k:J

    return-wide p1
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-static {p0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/net/URL;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_45

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_45

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_41

    const/16 p1, 0x26

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_45
    :goto_45
    return-object p0
.end method

.method public static varargs a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_44

    array-length v0, p1

    if-nez v0, :cond_a

    goto :goto_44

    :cond_a
    array-length v0, p1

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    aget-object p0, p1, p0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {p0, v2, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :goto_23
    array-length p0, p1

    if-ge v1, p0, :cond_37

    const/16 p0, 0x26

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p1, v1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p1, v2

    invoke-static {p0, v2, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_23

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an even number of parameter names/values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_44
    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_10
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3d

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "[]="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_3d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4a

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4a
    return-object p2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    :goto_f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_13
    if-ge v1, v2, :cond_1e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_1e

    goto :goto_f

    :cond_1e
    :goto_1e
    return-object p1
.end method

.method private static a(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_b

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p0, [I

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    check-cast p0, [I

    array-length v1, p0

    :goto_18
    if-ge v2, v1, :cond_b9

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_26
    instance-of v1, p0, [Z

    if-eqz v1, :cond_3b

    check-cast p0, [Z

    array-length v1, p0

    :goto_2d
    if-ge v2, v1, :cond_b9

    aget-boolean v3, p0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_3b
    instance-of v1, p0, [J

    if-eqz v1, :cond_50

    check-cast p0, [J

    array-length v1, p0

    :goto_42
    if-ge v2, v1, :cond_b9

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_50
    instance-of v1, p0, [F

    if-eqz v1, :cond_65

    check-cast p0, [F

    array-length v1, p0

    :goto_57
    if-ge v2, v1, :cond_b9

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_65
    instance-of v1, p0, [D

    if-eqz v1, :cond_7a

    check-cast p0, [D

    array-length v1, p0

    :goto_6c
    if-ge v2, v1, :cond_b9

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_7a
    instance-of v1, p0, [S

    if-eqz v1, :cond_8f

    check-cast p0, [S

    array-length v1, p0

    :goto_81
    if-ge v2, v1, :cond_b9

    aget-short v3, p0, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    :cond_8f
    instance-of v1, p0, [B

    if-eqz v1, :cond_a4

    check-cast p0, [B

    array-length v1, p0

    :goto_96
    if-ge v2, v1, :cond_b9

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    :cond_a4
    instance-of v1, p0, [C

    if-eqz v1, :cond_b9

    check-cast p0, [C

    array-length v1, p0

    :goto_ab
    if-ge v2, v1, :cond_b9

    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    :cond_b9
    return-object v0
.end method

.method public static a(Lcom/tds/tapdb/b/g$m;)V
    .registers 1

    if-nez p0, :cond_4

    sget-object p0, Lcom/tds/tapdb/b/g$m;->a:Lcom/tds/tapdb/b/g$m;

    :cond_4
    sput-object p0, Lcom/tds/tapdb/b/g;->Y:Lcom/tds/tapdb/b/g$m;

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)V
    .registers 7

    const-string v0, "http.nonProxyHosts"

    if-eqz p0, :cond_2a

    array-length v1, p0

    if-lez v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_20

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_20
    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    invoke-static {v0, p0}, Lcom/tds/tapdb/b/g;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/tds/tapdb/b/g;)J
    .registers 3

    iget-wide v0, p0, Lcom/tds/tapdb/b/g;->k:J

    return-wide v0
.end method

.method private b(J)Lcom/tds/tapdb/b/g;
    .registers 7

    iget-wide v0, p0, Lcom/tds/tapdb/b/g;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tds/tapdb/b/g;->j:J

    :cond_c
    iget-wide v0, p0, Lcom/tds/tapdb/b/g;->j:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tds/tapdb/b/g;->j:J

    return-object p0
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->c(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-static {p0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->c(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/net/URL;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_8b

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2f
    move-object v3, p0

    :try_start_30
    new-instance p0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_79

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    const-string v2, "%2B"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_79
    .catch Ljava/net/URISyntaxException; {:try_start_30 .. :try_end_79} :catch_7a

    :cond_79
    return-object p0

    :catch_7a
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parsing URI failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance p0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {p0, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw p0

    :catch_8b
    move-exception p0

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ne v0, p0, :cond_13

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    return-object p1
.end method

.method static synthetic c(Lcom/tds/tapdb/b/g;)J
    .registers 3

    iget-wide v0, p0, Lcom/tds/tapdb/b/g;->j:J

    return-wide v0
.end method

.method public static c(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static varargs c(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-static {p0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/net/URL;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Z)V
    .registers 2

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.keepAlive"

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/g;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/tds/tapdb/b/g;)Lcom/tds/tapdb/b/g$r;
    .registers 1

    iget-object p0, p0, Lcom/tds/tapdb/b/g;->n:Lcom/tds/tapdb/b/g$r;

    return-object p0
.end method

.method public static d(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->f(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-static {p0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->f(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/net/URL;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "**>;Z)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->g(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-static {p0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->g(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/net/URL;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(I)V
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.maxConnections"

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/g;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static f(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Ljava/net/URL;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(I)V
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.proxyPort"

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/g;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https.proxyPort"

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/g;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static g(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g(Ljava/net/URL;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Lcom/tds/tapdb/b/g;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/tds/tapdb/b/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Lcom/tds/tapdb/b/g$d;

    invoke-direct {v0, p0, p1}, Lcom/tds/tapdb/b/g$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_8
    new-instance v0, Lcom/tds/tapdb/b/g$e;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/b/g$e;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    return-object p0

    :cond_9
    const-string p0, "UTF-8"

    return-object p0
.end method

.method private r()Ljava/net/HttpURLConnection;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/tds/tapdb/b/g;->l:Ljava/lang/String;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/tds/tapdb/b/g;->Y:Lcom/tds/tapdb/b/g$m;

    iget-object v1, p0, Lcom/tds/tapdb/b/g;->b:Ljava/net/URL;

    invoke-direct {p0}, Lcom/tds/tapdb/b/g;->s()Ljava/net/Proxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tds/tapdb/b/g$m;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_19

    :cond_11
    sget-object v0, Lcom/tds/tapdb/b/g;->Y:Lcom/tds/tapdb/b/g$m;

    iget-object v1, p0, Lcom/tds/tapdb/b/g;->b:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/tds/tapdb/b/g$m;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    :goto_19
    iget-object v1, p0, Lcom/tds/tapdb/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v1, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private s()Ljava/net/Proxy;
    .registers 6

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/tds/tapdb/b/g;->l:Ljava/lang/String;

    iget v4, p0, Lcom/tds/tapdb/b/g;->m:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static s(Ljava/lang/String;)V
    .registers 2

    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/g;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Lcom/tds/tapdb/b/g;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static z()Ljavax/net/ssl/SSLSocketFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    sget-object v0, Lcom/tds/tapdb/b/g;->W:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_36

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/tds/tapdb/b/g$b;

    invoke-direct {v1}, Lcom/tds/tapdb/b/g$b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :try_start_f
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/tds/tapdb/b/g;->W:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_24
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_24} :catch_25

    goto :goto_36

    :catch_25
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Security exception configuring SSL context"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, v1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_36
    :goto_36
    sget-object v0, Lcom/tds/tapdb/b/g;->W:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method


# virtual methods
.method public B()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->m()Lcom/tds/tapdb/b/g;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tds/tapdb/b/g;->g:Z

    return v0
.end method

.method public D()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->p()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public E()J
    .registers 3

    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->j(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public F()Ljava/lang/String;
    .registers 2

    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->l()Lcom/tds/tapdb/b/g;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v1, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public H()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->n()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public J()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->n()I

    move-result v0

    const/16 v1, 0x194

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public K()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->n()I

    move-result v0

    const/16 v1, 0x130

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public L()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->n()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected M()Lcom/tds/tapdb/b/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/tds/tapdb/b/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tds/tapdb/b/g$q;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/tds/tapdb/b/g;->i:I

    invoke-direct {v1, v2, v0, v3}, Lcom/tds/tapdb/b/g$q;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    return-object p0
.end method

.method public N()Ljava/io/InputStreamReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->t(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .registers 2

    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->n()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected Q()Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tds/tapdb/b/g;->e:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/tapdb/b/g;->e:Z

    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->i(Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/tapdb/b/g;->M()Lcom/tds/tapdb/b/g;

    iget-object v0, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    const-string v1, "--00content0boundary00\r\n"

    goto :goto_19

    :cond_15
    iget-object v0, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    const-string v1, "\r\n--00content0boundary00\r\n"

    :goto_19
    invoke-virtual {v0, v1}, Lcom/tds/tapdb/b/g$q;->a(Ljava/lang/String;)Lcom/tds/tapdb/b/g$q;

    return-object p0
.end method

.method public R()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->n()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_18

    :try_start_8
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_41

    :catch_11
    move-exception v0

    new-instance v1, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v1, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_18
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_41

    :try_start_22
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_41

    :catch_2b
    move-exception v0

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->p()I

    move-result v1

    if-gtz v1, :cond_3b

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_41

    :cond_3b
    new-instance v1, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v1, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_41
    :goto_41
    iget-boolean v1, p0, Lcom/tds/tapdb/b/g;->h:Z

    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_5f

    :cond_52
    :try_start_52
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_57} :catch_58

    return-object v1

    :catch_58
    move-exception v0

    new-instance v1, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v1, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public S()Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_11

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/tds/tapdb/b/g;->z()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_11
    return-object p0
.end method

.method public T()Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_11

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/tds/tapdb/b/g;->A()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_11
    return-object p0
.end method

.method public U()Ljava/net/URL;
    .registers 2

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public V()Ljava/io/OutputStreamWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->M()Lcom/tds/tapdb/b/g;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-static {v1}, Lcom/tds/tapdb/b/g$q;->a(Lcom/tds/tapdb/b/g$q;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v1, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Ljava/lang/String;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->m()Lcom/tds/tapdb/b/g;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->m()Lcom/tds/tapdb/b/g;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Lcom/tds/tapdb/b/g;
    .registers 2

    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->c(Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/tds/tapdb/b/g;
    .registers 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Lcom/tds/tapdb/b/g;->i:I

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Size must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)Lcom/tds/tapdb/b/g;
    .registers 4

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-object p0
.end method

.method public a(Lcom/tds/tapdb/b/g$r;)Lcom/tds/tapdb/b/g;
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Lcom/tds/tapdb/b/g$r;->a:Lcom/tds/tapdb/b/g$r;

    :cond_4
    iput-object p1, p0, Lcom/tds/tapdb/b/g;->n:Lcom/tds/tapdb/b/g$r;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget p1, p0, Lcom/tds/tapdb/b/g;->i:I

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_1a

    new-instance p1, Lcom/tds/tapdb/b/g$f;

    iget-boolean v1, p0, Lcom/tds/tapdb/b/g;->g:Z

    invoke-direct {p1, p0, v0, v1, v0}, Lcom/tds/tapdb/b/g$f;-><init>(Lcom/tds/tapdb/b/g;Ljava/io/Closeable;ZLjava/io/OutputStream;)V

    invoke-virtual {p1}, Lcom/tds/tapdb/b/g$p;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tds/tapdb/b/g;

    return-object p1

    :catch_1a
    move-exception p1

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->M()Lcom/tds/tapdb/b/g;

    iget-object v0, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-virtual {p0, p1, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p1

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method protected a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lcom/tds/tapdb/b/g$i;

    iget-boolean v3, p0, Lcom/tds/tapdb/b/g;->g:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tds/tapdb/b/g$i;-><init>(Lcom/tds/tapdb/b/g;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Lcom/tds/tapdb/b/g$p;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tds/tapdb/b/g;

    return-object p1
.end method

.method public a(Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->e()Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a(Ljava/io/PrintStream;)Lcom/tds/tapdb/b/g;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->a(Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/Reader;)Lcom/tds/tapdb/b/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->M()Lcom/tds/tapdb/b/g;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_1e

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-static {v1}, Lcom/tds/tapdb/b/g$q;->a(Lcom/tds/tapdb/b/g$q;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v1, Lcom/tds/tapdb/b/g$a;

    invoke-direct {v1, p0, v0, p1, v0}, Lcom/tds/tapdb/b/g$a;-><init>(Lcom/tds/tapdb/b/g;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/tds/tapdb/b/g$p;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tds/tapdb/b/g;

    return-object p1

    :catch_1e
    move-exception p1

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method protected a(Ljava/io/Reader;Ljava/io/Writer;)Lcom/tds/tapdb/b/g;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lcom/tds/tapdb/b/g$j;

    iget-boolean v3, p0, Lcom/tds/tapdb/b/g;->g:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tds/tapdb/b/g$j;-><init>(Lcom/tds/tapdb/b/g;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v6}, Lcom/tds/tapdb/b/g$p;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tds/tapdb/b/g;

    return-object p1
.end method

.method public a(Ljava/io/Writer;)Lcom/tds/tapdb/b/g;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->g()Ljava/io/BufferedReader;

    move-result-object v4

    new-instance v6, Lcom/tds/tapdb/b/g$h;

    iget-boolean v3, p0, Lcom/tds/tapdb/b/g;->g:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tds/tapdb/b/g$h;-><init>(Lcom/tds/tapdb/b/g;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V

    invoke-virtual {v6}, Lcom/tds/tapdb/b/g$p;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tds/tapdb/b/g;

    return-object p1
.end method

.method public a(Ljava/lang/Appendable;)Lcom/tds/tapdb/b/g;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->g()Ljava/io/BufferedReader;

    move-result-object v4

    new-instance v6, Lcom/tds/tapdb/b/g$g;

    iget-boolean v3, p0, Lcom/tds/tapdb/b/g;->g:Z

    move-object v0, v6

    move-object v1, p0

    move-object v2, v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tds/tapdb/b/g$g;-><init>(Lcom/tds/tapdb/b/g;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V

    invoke-virtual {v6}, Lcom/tds/tapdb/b/g$p;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tds/tapdb/b/g;

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    if-eqz p1, :cond_4d

    if-nez p2, :cond_5

    goto :goto_4d

    :cond_5
    iget-boolean v0, p0, Lcom/tds/tapdb/b/g;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_12

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v2, p3}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    iput-boolean v1, p0, Lcom/tds/tapdb/b/g;->f:Z

    :cond_12
    invoke-static {p3}, Lcom/tds/tapdb/b/g;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :try_start_16
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->M()Lcom/tds/tapdb/b/g;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    :cond_22
    iget-object v0, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tds/tapdb/b/g$q;->a(Ljava/lang/String;)Lcom/tds/tapdb/b/g$q;

    iget-object p1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    if-eqz p2, :cond_45

    iget-object p1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tds/tapdb/b/g$q;->a(Ljava/lang/String;)Lcom/tds/tapdb/b/g$q;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_45} :catch_46

    :cond_45
    return-object p0

    :catch_46
    move-exception p1

    new-instance p2, Lcom/tds/tapdb/b/g$o;

    invoke-direct {p2, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_4d
    :goto_4d
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3

    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)Lcom/tds/tapdb/b/g;
    .registers 3

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    invoke-virtual {p0, p1, p2}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tds/tapdb/b/g$k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->e(Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/tds/tapdb/b/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/tds/tapdb/b/g;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tds/tapdb/b/g;->b(J)Lcom/tds/tapdb/b/g;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_16

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1

    :catch_16
    move-exception p1

    new-instance p2, Lcom/tds/tapdb/b/g$o;

    invoke-direct {p2, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/tds/tapdb/b/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->Q()Lcom/tds/tapdb/b/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    iget-object p1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-virtual {p0, p4, p1}, Lcom/tds/tapdb/b/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    new-instance p2, Lcom/tds/tapdb/b/g$o;

    invoke-direct {p2, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->Q()Lcom/tds/tapdb/b/g;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    iget-object p1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-virtual {p1, p4}, Lcom/tds/tapdb/b/g$q;->a(Ljava/lang/String;)Lcom/tds/tapdb/b/g$q;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p1

    new-instance p2, Lcom/tds/tapdb/b/g$o;

    invoke-direct {p2, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    goto :goto_e

    :cond_1e
    return-object p0
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object p0
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/tds/tapdb/b/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Z)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p0
.end method

.method public a([B)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    if-eqz p1, :cond_7

    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/tds/tapdb/b/g;->b(J)Lcom/tds/tapdb/b/g;

    :cond_7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/io/InputStream;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/tds/tapdb/b/g;
    .registers 2

    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p0
.end method

.method public b(Ljava/io/File;)Lcom/tds/tapdb/b/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tds/tapdb/b/g;->b(J)Lcom/tds/tapdb/b/g;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_11} :catch_16

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/io/InputStream;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1

    :catch_16
    move-exception p1

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3

    const-string v0, "Accept-Charset"

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)Lcom/tds/tapdb/b/g;
    .registers 4

    iget-object v0, p0, Lcom/tds/tapdb/b/g;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/tds/tapdb/b/g;->l:Ljava/lang/String;

    iput p2, p0, Lcom/tds/tapdb/b/g;->m:I

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The connection has already been created. This method must be called before reading or writing to the request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Number;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 5

    const-string v0, "Content-Type"

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; charset="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1

    :cond_26
    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_19

    const-string p1, "\"; filename=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Content-Disposition"

    invoke-virtual {p0, p2, p1}, Lcom/tds/tapdb/b/g;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    if-eqz p3, :cond_2e

    const-string p1, "Content-Type"

    invoke-virtual {p0, p1, p3}, Lcom/tds/tapdb/b/g;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    :cond_2e
    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->h(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/Map$Entry;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/Map;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/tapdb/b/g;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->b(Ljava/util/Map$Entry;)Lcom/tds/tapdb/b/g;

    goto :goto_e

    :cond_1e
    return-object p0
.end method

.method public b(Z)Lcom/tds/tapdb/b/g;
    .registers 2

    iput-boolean p1, p0, Lcom/tds/tapdb/b/g;->g:Z

    return-object p0
.end method

.method public c(I)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3

    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_73

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_73

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-eqz v3, :cond_73

    if-ne v3, v1, :cond_1c

    goto :goto_73

    :cond_1c
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_25

    :goto_23
    move v5, v1

    goto :goto_71

    :cond_25
    :goto_25
    if-ge v3, v5, :cond_73

    const/16 v7, 0x3d

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v6, :cond_68

    if-ge v7, v5, :cond_68

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_68

    const/4 p1, 0x2

    if-le v7, p1, :cond_67

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x22

    if-ne p2, p1, :cond_67

    sub-int/2addr v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p2, p1, :cond_67

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_67
    return-object v3

    :cond_68
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v6, :cond_25

    goto :goto_23

    :goto_71
    move v1, v5

    goto :goto_25

    :cond_73
    :goto_73
    return-object v0
.end method

.method public c()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->n()I

    move-result v0

    const/16 v1, 0x190

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public d(I)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 4

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Z)Lcom/tds/tapdb/b/g;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->S()Lcom/tds/tapdb/b/g;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->T()Lcom/tds/tapdb/b/g;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3

    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public e(Z)Lcom/tds/tapdb/b/g;
    .registers 2

    iput-boolean p1, p0, Lcom/tds/tapdb/b/g;->h:Z

    return-object p0
.end method

.method public e()Ljava/io/BufferedInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->R()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/tds/tapdb/b/g;->i:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tds/tapdb/b/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/tds/tapdb/b/g;->i:I

    return v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public f(Z)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->h()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->e()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;

    invoke-static {p1}, Lcom/tds/tapdb/b/g;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p1

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public g(I)Lcom/tds/tapdb/b/g;
    .registers 3

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->h(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/tds/tapdb/b/g;->h(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tds/tapdb/b/g;->h(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Lcom/tds/tapdb/b/g;->h(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/io/BufferedReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->g(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->t(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object p1

    iget v1, p0, Lcom/tds/tapdb/b/g;->i:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->M()Lcom/tds/tapdb/b/g;

    iget-object v0, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tds/tapdb/b/g$q;->a(Ljava/lang/String;)Lcom/tds/tapdb/b/g$q;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public h(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->d(I)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tds/tapdb/b/g$k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->r(Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method protected h()Ljava/io/ByteArrayOutputStream;
    .registers 3

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->p()I

    move-result v0

    if-lez v0, :cond_c

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-object v1

    :cond_c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public i()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->h()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->e()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/tds/tapdb/b/g;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_10
    move-exception v0

    new-instance v1, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v1, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public j(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/tapdb/b/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public j()Ljava/lang/String;
    .registers 2

    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 3

    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/tds/tapdb/b/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected k(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_7d

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-eqz v2, :cond_78

    if-ne v2, v0, :cond_1b

    goto :goto_78

    :cond_1b
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_23

    move v4, v0

    :cond_23
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_28
    :goto_28
    if-ge v2, v4, :cond_77

    const/16 v7, 0x3d

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v5, :cond_6d

    if-ge v7, v4, :cond_6d

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6d

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_6d

    const/4 v9, 0x2

    if-le v8, v9, :cond_6a

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x22

    if-ne v10, v9, :cond_6a

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v10, v9, :cond_6a

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_6a
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v5, :cond_28

    move v4, v0

    goto :goto_28

    :cond_77
    return-object v6

    :cond_78
    :goto_78
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_7d
    :goto_7d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected l()Lcom/tds/tapdb/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->a(Lcom/tds/tapdb/b/g$r;)Lcom/tds/tapdb/b/g;

    iget-object v1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    if-nez v1, :cond_9

    return-object p0

    :cond_9
    iget-boolean v2, p0, Lcom/tds/tapdb/b/g;->e:Z

    if-eqz v2, :cond_12

    const-string v2, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v1, v2}, Lcom/tds/tapdb/b/g$q;->a(Ljava/lang/String;)Lcom/tds/tapdb/b/g$q;

    :cond_12
    iget-boolean v1, p0, Lcom/tds/tapdb/b/g;->g:Z

    if-eqz v1, :cond_1e

    :try_start_16
    iget-object v1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_23

    :catch_1c
    move-exception v1

    goto :goto_23

    :cond_1e
    iget-object v1, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :goto_23
    iput-object v0, p0, Lcom/tds/tapdb/b/g;->d:Lcom/tds/tapdb/b/g$q;

    return-object p0
.end method

.method protected m()Lcom/tds/tapdb/b/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->l()Lcom/tds/tapdb/b/g;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v1, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->m()Lcom/tds/tapdb/b/g;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->l()Lcom/tds/tapdb/b/g;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    new-instance v1, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v1, v0}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public n(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->B()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2b

    :cond_d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_28
    sget-object p1, Lcom/tds/tapdb/b/g;->V:[Ljava/lang/String;

    return-object p1

    :cond_2b
    :goto_2b
    sget-object p1, Lcom/tds/tapdb/b/g;->V:[Ljava/lang/String;

    return-object p1
.end method

.method public o(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public o()Ljava/lang/String;
    .registers 2

    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .registers 2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->p(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/tds/tapdb/b/g;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public q()Ljava/lang/String;
    .registers 2

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tds/tapdb/b/g;->k(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3

    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->R()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lcom/tds/tapdb/b/g;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception p1

    new-instance v0, Lcom/tds/tapdb/b/g$o;

    invoke-direct {v0, p1}, Lcom/tds/tapdb/b/g$o;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public t()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/b/g$o;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->n()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->U()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .registers 3

    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->j(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public u(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3

    const-string v0, "Referer"

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public v()Lcom/tds/tapdb/b/g;
    .registers 2

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->y()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/tds/tapdb/b/g;
    .registers 3

    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object p1

    return-object p1
.end method

.method public w()Ljava/lang/String;
    .registers 2

    const-string v0, "ETag"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()J
    .registers 3

    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/tds/tapdb/b/g;->j(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()Ljava/net/HttpURLConnection;
    .registers 2

    iget-object v0, p0, Lcom/tds/tapdb/b/g;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/tds/tapdb/b/g;->r()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/tapdb/b/g;->a:Ljava/net/HttpURLConnection;

    :cond_a
    iget-object v0, p0, Lcom/tds/tapdb/b/g;->a:Ljava/net/HttpURLConnection;

    return-object v0
.end method
