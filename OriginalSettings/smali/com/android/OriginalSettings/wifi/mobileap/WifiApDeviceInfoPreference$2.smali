.class Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$2;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;

    #calls: Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;->access$000(Lcom/android/OriginalSettings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    .line 94
    return-void
.end method
