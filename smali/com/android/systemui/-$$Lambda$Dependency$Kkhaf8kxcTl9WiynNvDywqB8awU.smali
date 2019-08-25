.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$Kkhaf8kxcTl9WiynNvDywqB8awU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$Kkhaf8kxcTl9WiynNvDywqB8awU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$Kkhaf8kxcTl9WiynNvDywqB8awU;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$Kkhaf8kxcTl9WiynNvDywqB8awU;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$Kkhaf8kxcTl9WiynNvDywqB8awU;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$Kkhaf8kxcTl9WiynNvDywqB8awU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/Dependency;->lambda$onConfigurationChanged$66(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
