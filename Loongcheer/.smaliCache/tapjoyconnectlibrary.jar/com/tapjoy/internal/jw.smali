.class public final Lcom/tapjoy/internal/jw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/tapjoy/internal/jp$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1982
    sget-object v0, Lcom/tapjoy/internal/ju;->a:Lcom/tapjoy/internal/jp;

    .line 2325
    new-instance v1, Lcom/tapjoy/internal/jp$a;

    const-string v2, "="

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/tapjoy/internal/jp$a;-><init>(Lcom/tapjoy/internal/jp;Ljava/lang/String;B)V

    .line 1982
    sput-object v1, Lcom/tapjoy/internal/jw;->a:Lcom/tapjoy/internal/jp$a;

    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static b()Ljava/util/LinkedHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method
