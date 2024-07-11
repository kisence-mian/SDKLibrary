.class public final Lcom/anythink/china/common/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "-9999"

.field public static final b:Ljava/lang/String; = "10000"

.field public static final c:Ljava/lang/String; = "10001"

.field public static final d:Ljava/lang/String; = "20001"

.field public static final e:Ljava/lang/String; = "Save fail!"

.field public static final f:Ljava/lang/String; = "Http connect error!"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;
    .registers 3

    .line 24
    new-instance v0, Lcom/anythink/china/common/a/b;

    invoke-direct {v0, p0, p1}, Lcom/anythink/china/common/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
