.class public final Lcom/anythink/basead/b/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "my_offer_cap_pacing"

.field public static final b:Ljava/lang/String; = "offer_id"

.field public static final c:Ljava/lang/String; = "offer_cap"

.field public static final d:Ljava/lang/String; = "offer_pacing"

.field public static final e:Ljava/lang/String; = "show_num"

.field public static final f:Ljava/lang/String; = "show_time"

.field public static final g:Ljava/lang/String; = "record_date"

.field public static final h:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS my_offer_cap_pacing (offer_id TEXT,offer_cap INTEGER,offer_pacing INTEGER,show_num INTEGER,show_time INTEGER,record_date INTEGER )"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
