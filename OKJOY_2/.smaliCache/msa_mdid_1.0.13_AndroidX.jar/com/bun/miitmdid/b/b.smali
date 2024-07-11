.class public Lcom/bun/miitmdid/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bun/miitmdid/b/b$b;,
        Lcom/bun/miitmdid/b/b$c;
    }
.end annotation


# static fields
.field private static h:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/bun/miitmdid/b/b$b;

.field private c:Ljava/lang/Object;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->b:Lcom/bun/miitmdid/b/b$b;

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->f:Ljava/util/Map;

    const-string p1, "GET"

    iput-object p1, p0, Lcom/bun/miitmdid/b/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static native a(Landroid/content/Context;)Lcom/bun/miitmdid/b/b;
.end method

.method static native synthetic a(Lcom/bun/miitmdid/b/b;)Ljava/lang/String;
.end method

.method private native a(Ljava/net/HttpURLConnection;)V
.end method

.method private native b()Lcom/bun/miitmdid/b/b$c;
.end method

.method static native synthetic b(Lcom/bun/miitmdid/b/b;)Lcom/bun/miitmdid/b/b$c;
.end method

.method private static native b(Ljava/lang/String;)V
.end method

.method private native c()Lcom/bun/miitmdid/b/b$c;
.end method

.method static native synthetic c(Lcom/bun/miitmdid/b/b;)Lcom/bun/miitmdid/b/b$c;
.end method

.method static native synthetic d(Lcom/bun/miitmdid/b/b;)Lcom/bun/miitmdid/b/b$b;
.end method

.method private native d()Ljava/lang/String;
.end method


# virtual methods
.method public native a()Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Lcom/bun/miitmdid/b/b$b;)Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Ljava/lang/Object;)Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Ljava/lang/String;)Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Ljava/lang/String;Ljava/lang/String;)Lcom/bun/miitmdid/b/b;
.end method

.method public native a(Ljava/util/Map;)Lcom/bun/miitmdid/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bun/miitmdid/b/b;"
        }
    .end annotation
.end method
