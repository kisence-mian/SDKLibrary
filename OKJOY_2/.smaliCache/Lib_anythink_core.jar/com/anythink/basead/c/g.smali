.class public final Lcom/anythink/basead/c/g;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "Video file error!"

.field public static final B:Ljava/lang/String; = "Incomplete resource allocation!"

.field public static final C:Ljava/lang/String; = "The cross-promotion offer was filtered for exclude offers."

.field public static final a:Ljava/lang/String; = "-9999"

.field public static final b:Ljava/lang/String; = "10000"

.field public static final c:Ljava/lang/String; = "10001"

.field public static final d:Ljava/lang/String; = "20001"

.field public static final e:Ljava/lang/String; = "20003"

.field public static final f:Ljava/lang/String; = "20004"

.field public static final g:Ljava/lang/String; = "20005"

.field public static final h:Ljava/lang/String; = "20006"

.field public static final i:Ljava/lang/String; = "30001"

.field public static final j:Ljava/lang/String; = "30002"

.field public static final k:Ljava/lang/String; = "40002"

.field public static final l:Ljava/lang/String; = "30003"

.field public static final m:Ljava/lang/String; = "Load timeout!"

.field public static final n:Ljava/lang/String; = "Offer data is loading."

.field public static final o:Ljava/lang/String; = "Save fail!"

.field public static final p:Ljava/lang/String; = "Load cancel!"

.field public static final q:Ljava/lang/String; = "Http connect error!"

.field public static final r:Ljava/lang/String; = "offerid\u3001placementid can not be null!"

.field public static final s:Ljava/lang/String; = "bidid\u3001placementid can not be null!"

.field public static final t:Ljava/lang/String; = "No fill, offer = null!"

.field public static final u:Ljava/lang/String; = "No fill, setting = null!"

.field public static final v:Ljava/lang/String; = "Ad is out of cap!"

.field public static final w:Ljava/lang/String; = "Ad is in pacing!"

.field public static final x:Ljava/lang/String; = "context = null!"

.field public static final y:Ljava/lang/String; = "Video player error!"

.field public static final z:Ljava/lang/String; = "Video url no exist!"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;
    .registers 3

    .line 52
    new-instance v0, Lcom/anythink/basead/c/f;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
