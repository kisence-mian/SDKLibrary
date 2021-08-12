.class public Lcom/kwad/sdk/core/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/b/c$a;,
        Lcom/kwad/sdk/core/b/c$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/b/c;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/b/c$b;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/b/c$b;->a:Lcom/kwad/sdk/core/b/c$b;

    return-object v0
.end method

.method public static b()Lcom/kwad/sdk/core/b/c$a;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/b/c$a;->a:Lcom/kwad/sdk/core/b/c$a;

    return-object v0
.end method

.method static synthetic c()Ljava/nio/charset/Charset;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/b/c;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method
