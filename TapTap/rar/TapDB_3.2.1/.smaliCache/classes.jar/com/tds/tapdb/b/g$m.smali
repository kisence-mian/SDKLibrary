.class public interface abstract Lcom/tds/tapdb/b/g$m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/tapdb/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "m"
.end annotation


# static fields
.field public static final a:Lcom/tds/tapdb/b/g$m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tds/tapdb/b/g$m$a;

    invoke-direct {v0}, Lcom/tds/tapdb/b/g$m$a;-><init>()V

    sput-object v0, Lcom/tds/tapdb/b/g$m;->a:Lcom/tds/tapdb/b/g$m;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
