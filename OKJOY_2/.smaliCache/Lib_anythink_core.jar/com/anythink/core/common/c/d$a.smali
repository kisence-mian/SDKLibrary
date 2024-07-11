.class public final Lcom/anythink/core/common/c/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "sdkconfig"

.field public static final b:Ljava/lang/String; = "key"

.field public static final c:Ljava/lang/String; = "type"

.field public static final d:Ljava/lang/String; = "value"

.field public static final e:Ljava/lang/String; = "lastupdatetime"

.field public static final f:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sdkconfig(key TEXT ,type TEXT ,lastupdatetime TEXT ,value TEXT )"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
